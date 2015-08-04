defmodule NicknameGenerator do
  alias Poison.Parser, as: JSON

  defmacrop prefix do
    data = File.open!(Application.get_env(:nice_nickname, :prefix), [:read], fn(file) ->
      IO.read(file, :all)
    end)
    pre = JSON.parse!(data)
    quote do
      unquote(pre)
    end
  end

  defmacrop suffix do
    data = File.open!(Application.get_env(:nice_nickname, :suffix), [:read], fn(file) ->
      IO.read(file, :all)
    end)
    suff = JSON.parse!(data)
    quote do
      unquote(suff)
    end
  end

  def generate_nickname do
    Random.seed(:erlang.now)
    "#{prefix |> Random.sample |> String.capitalize} #{suffix |> Random.sample |> String.capitalize}"
  end

 
end
