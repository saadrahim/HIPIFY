// RUN: %run_test hipify "%s" "%t" %hipify_args -D__CUDA_API_VERSION_INTERNAL %clang_args

// CHECK: #include <hip/hip_runtime.h>
#include <cuda.h>

int main() {
  printf("04. CUDA Driver API Defines synthetic test\n");

  // CHECK: #define __HIPCC__;
  #define __CUDACC__;

  // CHECK: int DEVICE_CPU = hipCpuDeviceId;
  // CHECK-NEXT: int DEVICE_INVALID = hipInvalidDeviceId;
  // CHECK-NEXT: int IPC_HANDLE_SIZE = HIP_IPC_HANDLE_SIZE;
  int DEVICE_CPU = CU_DEVICE_CPU;
  int DEVICE_INVALID = CU_DEVICE_INVALID;
  int IPC_HANDLE_SIZE = CU_IPC_HANDLE_SIZE;

  // CHECK: void* LAUNCH_PARAM_BUFFER_POINTER = HIP_LAUNCH_PARAM_BUFFER_POINTER;
  // CHECK-NEXT: void* LAUNCH_PARAM_BUFFER_SIZE = HIP_LAUNCH_PARAM_BUFFER_SIZE;
  // CHECK-NEXT: void* LAUNCH_PARAM_END = HIP_LAUNCH_PARAM_END;
  void* LAUNCH_PARAM_BUFFER_POINTER = CU_LAUNCH_PARAM_BUFFER_POINTER;
  void* LAUNCH_PARAM_BUFFER_SIZE = CU_LAUNCH_PARAM_BUFFER_SIZE;
  void* LAUNCH_PARAM_END = CU_LAUNCH_PARAM_END;

  // CHECK: int MEMHOSTALLOC_PORTABLE = hipHostMallocPortable;
  // CHECK-NEXT: int MEMHOSTALLOC_DEVICEMAP = hipHostMallocMapped;
  // CHECK-NEXT: int MEMHOSTALLOC_WRITECOMBINED = hipHostMallocWriteCombined;
  // CHECK-NEXT: int MEMHOSTREGISTER_PORTABLE = hipHostRegisterPortable;
  // CHECK-NEXT: int MEMHOSTREGISTER_DEVICEMAP = hipHostRegisterMapped;
  // CHECK-NEXT: int MEMHOSTREGISTER_IOMEMORY = hipHostRegisterIoMemory;
  int MEMHOSTALLOC_PORTABLE = CU_MEMHOSTALLOC_PORTABLE;
  int MEMHOSTALLOC_DEVICEMAP = CU_MEMHOSTALLOC_DEVICEMAP;
  int MEMHOSTALLOC_WRITECOMBINED = CU_MEMHOSTALLOC_WRITECOMBINED;
  int MEMHOSTREGISTER_PORTABLE = CU_MEMHOSTREGISTER_PORTABLE;
  int MEMHOSTREGISTER_DEVICEMAP = CU_MEMHOSTREGISTER_DEVICEMAP;
  int MEMHOSTREGISTER_IOMEMORY = CU_MEMHOSTREGISTER_IOMEMORY;

  // CHECK: int TRSA_OVERRIDE_FORMAT = HIP_TRSA_OVERRIDE_FORMAT;
  // CHECK-NEXT: int TRSF_NORMALIZED_COORDINATES = HIP_TRSF_NORMALIZED_COORDINATES;
  // CHECK-NEXT: int TRSF_READ_AS_INTEGER = HIP_TRSF_READ_AS_INTEGER;
  // CHECK-NEXT: int TRSF_SRGB = HIP_TRSF_SRGB;
  int TRSA_OVERRIDE_FORMAT = CU_TRSA_OVERRIDE_FORMAT;
  int TRSF_NORMALIZED_COORDINATES = CU_TRSF_NORMALIZED_COORDINATES;
  int TRSF_READ_AS_INTEGER = CU_TRSF_READ_AS_INTEGER;
  int TRSF_SRGB = CU_TRSF_SRGB;

  // CHECK: int ARRAY3D_LAYERED = hipArrayLayered;
  // CHECK-NEXT: int ARRAY3D_SURFACE_LDST = hipArraySurfaceLoadStore;
  // CHECK-NEXT: int ARRAY3D_CUBEMAP = hipArrayCubemap;
  // CHECK-NEXT: int ARRAY3D_TEXTURE_GATHER = hipArrayTextureGather;
  int ARRAY3D_LAYERED = CUDA_ARRAY3D_LAYERED;
  int ARRAY3D_SURFACE_LDST = CUDA_ARRAY3D_SURFACE_LDST;
  int ARRAY3D_CUBEMAP = CUDA_ARRAY3D_CUBEMAP;
  int ARRAY3D_TEXTURE_GATHER = CUDA_ARRAY3D_TEXTURE_GATHER;

  // CHECK: int COOPERATIVE_LAUNCH_MULTI_DEVICE_NO_PRE_LAUNCH_SYNC = hipCooperativeLaunchMultiDeviceNoPreSync;
  // CHECK-NEXT: int COOPERATIVE_LAUNCH_MULTI_DEVICE_NO_POST_LAUNCH_SYNC = hipCooperativeLaunchMultiDeviceNoPostSync;
  int COOPERATIVE_LAUNCH_MULTI_DEVICE_NO_PRE_LAUNCH_SYNC = CUDA_COOPERATIVE_LAUNCH_MULTI_DEVICE_NO_PRE_LAUNCH_SYNC;
  int COOPERATIVE_LAUNCH_MULTI_DEVICE_NO_POST_LAUNCH_SYNC = CUDA_COOPERATIVE_LAUNCH_MULTI_DEVICE_NO_POST_LAUNCH_SYNC;

  return 0;
}
