def Greeter do
  def start do
    name = IO.gets("hi there, whats your name?\n")

    case String.trim(name) do
      "Abhay" -> "Oh! that's my favorite name."
      name -> "hi, #{name}. It's great to know your name"
    end
  end
end
