#include "mex.h"
#include "utils.h"

/* 
   Gang Liang (c) 2005
   Nikolai Yu. Zolotykh (c) 2006
*/

/* Gang Liang (liang@uci.edu) */

void mexFunction(int nOut, mxArray *pOut[], 
		 int nIn, const mxArray *pIn[])
{
  mxArray *pNewIn[3];
  static const char *sfield[] = {"type", "subs"};
  int nSubs, i;

  if(!mxIsClass(pIn[0], "pointer"))
    mexErrMsgTxt("Object is not of pointer class.");

  pOut[0] = GetPointerData(GetPointerData(pIn[0]));

  if(!pOut[0])
    mexErrMsgTxt("Null pointer: nothing to refer to.");
  
  /* use a new pNewIn for dispatch function calls
     I know nIn = 2, now use 3 for perhaps builtin call */

  pNewIn[0] = mxCreateString("subsref");
  pNewIn[2] = mxCreateStructMatrix(1, 1, 2, sfield);

  nSubs = mxGetNumberOfElements(pIn[1]);

  for(i = 0; i < nSubs; i++)
  {
    /* when i = 0, pOut[0] is the pointed object.
       then it's be the object from the previous call. */

    pNewIn[1] = pOut[0];
    mxSetFieldByNumber( pNewIn[2], 0, 0,
        mxDuplicateArray(mxGetFieldByNumber(pIn[1], i, 0)));
    mxSetFieldByNumber( pNewIn[2], 0, 1,
        mxDuplicateArray(mxGetFieldByNumber(pIn[1], i, 1)));

    /* dispatch subsref calls to the child object */

    if (!mxIsClass(pOut[0], "pointer"))
      mexCallMATLAB(1, pOut, 3, pNewIn, "builtin");
    else
      mexCallMATLAB(1, pOut, 2, pNewIn + 1, "subsref");
  }
}
