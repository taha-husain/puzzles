# opened Array class and added method sort_by_string_length.
class Array
  # define : This method called on any array of strings or even non strings.
  # Convert them to string using to_s then sort the array by length of each element.
  def sort_by_string_length
    sort_by { |element| element.to_s.length }
  end
end

arr = ['hello', 'hi', 'bye']
arr.sort_by_string_length

# => ["hi", "bye", "hello"]