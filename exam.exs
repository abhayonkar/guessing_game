list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  IO.puts("Number: #{x}")
end)

# Enum.each: Used to iterate over a collection and perform side effects for each element. It does not return a new collection.
# Enum.into: Used to convert one enumerable into another type of collection.

list = [a: 1, b: 2, c: 3]

map = Enum.into(list, %{})

IO.inspect(map)

list = [{:a, 1}, {:b, 2}, {:c, 3}]

maps = Enum.into(list, %{})

IO.inspect(maps)

list = [1, 2, 3, 4, 5]

set = Enum.into(list, MapSet.new())
IO.inspect(set)
