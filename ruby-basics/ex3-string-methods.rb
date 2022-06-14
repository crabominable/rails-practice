phrase = "Academy"
puts phrase.include? "A"

phrase2 = "Academy"
puts phrase2.upcase()

phrase3 = "Academy"
puts phrase3.downcase()

phrase4 = "Academy"
puts phrase4.length()

phrase5 = "    Academy    "
puts phrase5.length()

# deleta espaços em branco na string
phrase6 = "    Academy    "
puts phrase6.strip()

phrase7 = "    Academy    "
puts phrase7.strip().length()

# o segundo arg limita até qual index é impresso
phrase8 = "Academy"
puts phrase8[0, 4]

phrase9 = "Academy"
puts phrase9.index("d")

phrase10 = "Academy"
puts phrase10 = "New academy".upcase()