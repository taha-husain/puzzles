# opened Array class and added method rotation_by.
class Array
  # define: This method could be called on any array
  # and when passed with an arguement rotates array in opposite direction.
  # Without arguement rotate by 1.
  def rotation_by(n = 1)
    rotate!(n * (-1))
  end
end

arr = [1, 2, 3, 4, 5, 6]
p arr.rotation_by(2)

 # => [5, 6, 1, 2, 3, 4]