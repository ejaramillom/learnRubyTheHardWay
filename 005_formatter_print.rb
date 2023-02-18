formatter = "here we have %{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third:"three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false }
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}
puts formatter % {
  first: "i had this thing",
  second: "that you could tune right up",
  third: "but it didn't sing",
  fourth: "so i said good night"
}

# %{} applies same format to multiple values