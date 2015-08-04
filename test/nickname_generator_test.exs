defmodule NicknameGeneratorTest do
  use ExUnit.Case
  import NicknameGenerator

  test "should generate a random nickname" do
    assert NicknameGenerator.generate_nickname != NicknameGenerator.generate_nickname
  end
end
