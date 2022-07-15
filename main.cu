#include "/content/hello-cuda/lib.h"

int main()
{
	cudaEvent_t start, end;
	cudaEventCreate(&start);
	cudaEventCreate(&end);

	cudaEventRecord(start);
	hello_cuda<<<1, 1>>>();
	cudaEventRecord(end);

	cudaEventSynchronize(end);
	return 0;
}