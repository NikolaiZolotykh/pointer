#include "mex.h"
#include "utils.h"

/* 
   Gang Liang (c) 2005
   Nikolai Yu. Zolotykh (c) 2006
*/

/*
   Goal: dispatch all the calls to the non-pointer object {{{
   Break the pointer barrier!

   For a null pointer, the function will create an object
   with appropriate type, then dispatch the call. So far,
   only several simple situations are considered, but already
   suffice for most applications.

   Gang Liang (liang@uci.edu)

   See $MATLAB/toolbox/matlab/opt/subsasgn.m for more
   information regarding the parameter convention.

   For the syntax A(I)=B, A{I}=B, or A.I=B when A is an
   object, the following funtion will be called:
   
      A = SUBSASGN(A,S,B)

    where S is a structure array with the fields:
      type -- '()', '{}', or '.'
              specifying the subscript type.
      subs -- Cell array or string containing the actual
              subscripts.

   one example:

    Simple calls are combined in a straightforward way for
    more complicated subscripting expressions.  In such cases
    length(S) is the number of subscripting levels.  For
    instance, A(1,2).name(3:5)=B invokes A=SUBSASGN(A,S,B)
    where S is 3-by-1 structure array with the following
    values:

   S(1).type='()'  S(2).type='.'    S(3).type='()'
   S(1).subs={1,2} S(2).subs='name' S(3).subs={3:5}

   ------------------------------------------------------------

   Modifications by Nikolai Yu. Zolotykh
   Also a bug fixed
*/


mxArray *copySubStruct(const mxArray *oldIn, int i, int nSubs);
mxArray *myCreateObj(const mxArray *pIn[]);
mxArray *myCreateByClassID(mxClassID newObjID);

void mexFunction(int nOut, mxArray *pOut[], 
		 int nIn, const mxArray *pIn[])
{
  mxArray *pointer, *nextObj, *dataPtr, *subs, *pNewIn[4], *data;
  int i, nSubs, index;
  char type[4], name[80];
  int bNewObj;

  pointer = pIn[0];

  if(!mxIsClass(pointer, "pointer"))
    mexErrMsgTxt("Not a pointer class object!");

  dataPtr = GetPointerData(GetPointerData(pointer));

  nSubs = mxGetNumberOfElements(pIn[1]);

  for(i = 0; dataPtr && i < nSubs - 1; i++) 
  {
    mxGetString(mxGetField(pIn[1], i, "type"), type, 3);
    if (type[0] == '.') 
    {
      mxGetString(mxGetField(pIn[1], i, "subs"), name, 80);
      nextObj = mxGetField(dataPtr, 0, name);

      if (!nextObj || !mxIsClass(nextObj, "pointer")) 
        break;
    } 
    else if (type[0] == '{') 
    { 
      /* a cell array */
      subs = mxGetField(pIn[1], i, "subs");
      if (mxGetNumberOfElements(subs) > 1) 
        break;
      subs = mxGetCell(subs,0);
      if (mxGetNumberOfElements(subs) > 1) 
        break;
      index = (int)mxGetScalar(subs);
      nextObj = mxGetCell(dataPtr,index);
      if (!nextObj || !mxIsClass(nextObj, "pointer")) 
        break;
    } 
    else if (type[0] == '(') 
    {
      /* so far the pointer matrix is not supported in other part yet. */
      if (!mxIsClass(dataPtr ,"pointer")) 
        break;
      mexErrMsgTxt("subsasgn: pointer matrix not supported yet.");
    } 
    else
      mexErrMsgTxt("subsasgn: unsupported type operator.");
    
    pointer = nextObj; 
    dataPtr = GetPointerData(pointer);
  }

  /* create pNewIn for dispatching calls: builtin
     now (nSubs - i) subitems left */
  bNewObj = dataPtr == NULL;
  if (bNewObj) 
  {
    dataPtr = myCreateObj(pIn);
    if(!dataPtr)
      mexErrMsgTxt("subsasgn: unsupported object class.");
  }

/* 
   Builtin subsasgn function can be many times 
   slower than direct access kind of a.data(1,1) = 1.
   In the future we plan to use here mexSubsAssign instead
   (but now this function is unimplemented) or
   to treat all or some important cases separately
*/
    pNewIn[0] = mxCreateString("subsasgn");
    pNewIn[1] = dataPtr;
    pNewIn[2] = copySubStruct(pIn[1], i, nSubs - i);
    pNewIn[3] = (mxArray*)pIn[2];
    mexCallMATLAB(1, pOut, 4, pNewIn, "builtin");

  /* clean the old data block */
  if (!bNewObj) 
    mxDestroyArray(dataPtr);

  /* relink the pointer object */
  /* mxArray* data = mxDuplicateArray(pOut[0]); */
  data = pOut[0];
  mexMakeArrayPersistent(data);
  SetPointerData(GetPointerData(pointer), data);

  /* return the pointer object! */
  pOut[0] = (mxArray*)(pIn[0]);

}

mxArray* copySubStruct(const mxArray *source, int start, int len)
{
  mxArray *dest, *s;
  int i, k;
  static const char *sField[] = {"type", "subs"};

  dest = mxCreateStructMatrix(1, len, 2, sField);

  for(i = 0; i < len; i++)
  {
      s = mxGetField(source, start + i, "type");
      mxSetField(dest, i, "type", mxDuplicateArray(s));

      s = mxGetField(source, start + i, "subs");
      mxSetField(dest, i, "subs", mxDuplicateArray(s));
  }

  return dest;
}

mxArray *myCreateObj(const mxArray *pIn[])
{
static const char *field_names[] = {"p"};
  /* use S.type to determine what object to create */
  char *type = (char*)mxGetPr(mxGetField(pIn[1], 0, "type"));
  int pdim[1] = {0};
  switch (*type) 
  {
    case '.': /* pointer.field */
      return mxCreateStructMatrix(1,1,0,field_names);
    case '{': /* pointer{index} */
      return mxCreateCellArray(1,pdim);
    case '(': /* pointer(index) */
      /* B has to be a one elment simple class */
      /* if (mxGetNumberOfElements(pIn[2]) != 1) cleanup(pNewIn); */
      return myCreateByClassID(mxGetClassID(pIn[2]));
    default:
      mexErrMsgTxt("Unsupported assignment operation.");
  }
}

mxArray *myCreateByClassID(mxClassID newObjID)
{
  switch(newObjID) 
  {
    case mxCHAR_CLASS:
      return mxCreateString("");
    case mxLOGICAL_CLASS:
      return mxCreateLogicalMatrix(1,1);
    case mxDOUBLE_CLASS:
    case mxSINGLE_CLASS:
    case mxINT8_CLASS:
    case mxUINT8_CLASS:
    case mxINT16_CLASS:
    case mxUINT16_CLASS:
    case mxINT32_CLASS:
    case mxUINT32_CLASS:
    case mxINT64_CLASS:
    case mxUINT64_CLASS:
      return mxCreateNumericMatrix(1, 1, newObjID, mxREAL);
  }
  return NULL; /* never reached, just to avoid a warning. */
}
