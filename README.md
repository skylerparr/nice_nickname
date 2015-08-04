NiceNickname
============

A profanity filter and nickname generator. Meant to be relatively fast at runtime

How to use
==========

Include the dependency in the mix.exs:

  defp deps do
    [
      {:nice_nickname, "~> 0.1.0"}
    ]
  end

Define your profanity dictionary
================================

In your config specify your profanity dictionary json array

  config :nice_nickname, :bad_words,
    "resources/profanity/profanity.json"

You can borrow mine in the resources folder in the project ;)

Now you can check to see if you have bad words in your strings.
  
  iex(1)> ProfanityFilter.has_profanity?("I don't have any bad words")
  false

  iex(2)> ProfanityFilter.has_profanity?("checkout my 2 girls 1 cup")
  true

Define your nickname prefixes and suffixes
==========================================

In your config specify your prefixes and suffixes json arry

  config :nice_nickname, :prefix,
    "resources/words/verbs.json"

  config :nice_nickname, :suffix,
    "resources/words/nouns.json"

Again, you can borrow mine. It's just a list of nouns and verbs.

Now you can generate crazy names:

  iex(4)> NicknameGenerator.generate_nickname  
  "Cestoid Unburnished"
  iex(5)> NicknameGenerator.generate_nickname
  "Loveable Extorsive"
  iex(6)> NicknameGenerator.generate_nickname
  "Oppressed Egal"

It's fun and don't forget to show your parents.


