#include <stdio.h>
#include "/content/hello-cuda/lib.h"

__global__ void hello_cuda()
{
	printf("Hello CUDA from GPU runtime!\n");
}