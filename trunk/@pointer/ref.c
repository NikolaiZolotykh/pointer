#include "mex.h"
#include "utils.h"

void mexFunction(int nOut, mxArray *pOut[], 
		 int nIn, const mxArray *pIn[])
{ 

  mxArray *address, *data;
  char *field_name;
  int field_number;

  address = GetPointerData(pIn[0]);
  data = GetPointerData(address);

  if (!data)
    mexErrMsgTxt("Pointer is NULL");

  field_name = AllocAndGetString(pIn[1]);

  field_number = mxGetFieldNumber(data, field_name);
  if (field_number == -1)
    mexErrMsgTxt("Reference to non-existent field");

  pOut[0] = mxDuplicateArray(mxGetFieldByNumber(data, 0, field_number));

  mxFree(field_name);
}




