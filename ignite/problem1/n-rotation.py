# import deque object from collections
from collections import deque
def rotate_array_by_n(arr, n = 1):
  """method to rotate list by n (default n is 1)"""
  dearr = deque(arr)
  # used deque object's method `rotate` to rotate input list
  dearr.rotate(n)
  return list(dearr)

print rotate_array_by_n(arr = [1,2,3,4,5,6], n = 2)