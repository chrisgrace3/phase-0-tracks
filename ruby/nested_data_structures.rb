# Reviewed for phase 0 repeat
# Orchestra Hash begins here
orchestra = {
  woodwinds: {
    flutes: [
      'Alto Flute in G',
      'Tenor Flute',
      'Soprano Flute in E Flat'
    ],
    double_reed: [
      'Bassoon',
      'Oboe',
    ],
    single_reed: [
      'Clarinet',
      'Saxophone',
      'Bass Clarinet'
    ]
  },
  brass: {
    low_brass: [
      "Tuba",
      "Euphonium",
      "Trombone"
    ],
    trumpets: [
      "Piccolo",
      "Slide Trumpet",
      "Cornet",
    ],
  },
  string_instruments: [
    "Violin",
    "Bass",
    "Viola",
    ]
}
puts orchestra

puts "\n\nHere are the flutes:"
puts orchestra[:woodwinds][:flutes]

puts "\n\nHere is the low brass section:"
puts orchestra[:brass][:low_brass]

puts "\n\nHere are the strings:"
puts orchestra[:string_instruments]

# Printing string_instruments at index 2 (should be 'viola')
puts orchestra[:string_instruments][2]

# Printing low brass at index 0 (should be 'tuba')
puts orchestra[:brass][:low_brass][0]

# Adding cello to strings array
puts "\n\nHere are the strings BEFORE the update:"
puts orchestra[:string_instruments]
orchestra[:string_instruments].push("Cello")
puts "Here are the strings AFTER the update: "
puts orchestra[:string_instruments]

# Updating the low brass section to change 'Euphonium' to 'Baritone'
puts "\n\nHere is the low brass section BEFORE the update:"
puts orchestra[:brass][:low_brass]
puts "Here is the low brass section AFTER the update:"
orchestra[:brass][:low_brass][1] = 'Baritone'
puts orchestra[:brass][:low_brass]
