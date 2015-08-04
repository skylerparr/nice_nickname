defmodule ProfanityFilterTest do
  use ExUnit.Case
  import ProfanityFilter

  test "should return true if is a bad word" do
    assert has_profanity?("penis")
  end

  test "should return false if does not contain bad word" do
    assert !has_profanity?("birds")
  end

  test "should return true if sentence contains at least 1 bad word" do
    assert has_profanity?("The quick brown fox jumped over the fucking moon")
  end

  test "should return false if is nil" do
    assert has_profanity?(nil) == false
  end

end
