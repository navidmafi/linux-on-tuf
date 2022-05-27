# ASUS TUF Graphics

Most of TUF (F15 Series in my case) laptops have 2 GPUs:
  - Intel iGPU
  - NVIDIA dGPU

These 2 GPUs work together with NVIDIA Optimus technology by offloading render and proccessing from Intel iGPU to NVIDIA dGPU and then passing rendered output back to Intel iGPU to be displayed on screen.
Since these series mostly do not provide a mux switch on graphics pipeline, the Intel iGPU cannot be turned off and NVIDIA dGPU cannot be consumed directly.

