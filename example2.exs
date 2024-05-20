# Enum.at/3 function is used to retrieve the element at a specified index in an enumerable. If the index is out of bounds, it returns a default value, which can be specified as the third argument. If no default value is provided, it returns nil by default.

# Here's the basic syntax of Enum.at/3:

# elixir
# Copy code
# Enum.at(enumerable, index, default \\ nil)
# enumerable: The collection from which you want to retrieve the element.
# index: The position of the element you want to retrieve.
# default: (Optional) The value to return if the index is out of bounds. If not provided, nil is returned.

list = [10, 20, 30, 40, 50]

# Get the element at index 2
element = Enum.at(list, 2)
IO.inspect(element)  # Output: 30

list = [10, 20, 30, 40, 50]

# Get the element at index 10, which is out of bounds
element = Enum.at(list, 10, "not found")
IO.inspect(element)  # Output: "not found"

list = [10, 20, 30, 40, 50]

# Get the element at index -1 (last element)
element = Enum.at(list, -1)
IO.inspect(element)  # Output: 50

# Get the element at index -3 (third from last)
element = Enum.at(list, -3)
IO.inspect(element)  # Output: 30
