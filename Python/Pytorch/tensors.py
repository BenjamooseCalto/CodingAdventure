import torch
import numpy as np

tensor = torch.rand(3,4)

if torch.cuda.is_available():
      tensor = tensor.to('cuda')

print(f"Shape of tensor: {tensor.shape}")
print(f"Datatype of tensor: {tensor.dtype}")
print(f"Device tensor is stored on: {tensor.device}")