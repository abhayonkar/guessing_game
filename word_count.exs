#this is a script file where the elixir shell runs it line by line

# filename = String.trim(IO.gets("File to count the words from: "))
# if string.trim is not added the it add a extra blank line after the output

filename = IO.gets("file to count words from: ") |> String.trim()

# body = File.read!(filename) |> String.split()
# body = String.split(File.read!(filename), ~r{\w})
#file to count words from: greeter.ex
# ["", "", "", "", "", "", "", "", "", " ", "", "", "", "", "", "", " ", "",
# "\n  ", "", "", " ", "", "", "", "", " ", "", "\n    ", "", "", "", " = ", "",
# ".", "", "", "", "(\"", "", " ", "", "", "", "", ", ", "", "", "", "", ...]

# words = String.split(File.read!(filename), ~r{(\\n|[^\w'])+})

words =
  File.read!(filename)
  |> String.split(~r{(\\n|[^\w'])+})
  |> Enum.filter(fn x -> x != "" end)

# IO.inspect words
words |> Enum.count() |> IO.puts()
#IO.puts(filename)
