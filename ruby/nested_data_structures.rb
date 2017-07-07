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

puts "\n\nStrings at index 2 (should be 'viola')."
puts orchestra[:string_instruments][2]

puts "\n\nLow brass at index 0 (should be 'tuba')."
puts orchestra[:brass][:low_brass][0]

puts "\n\nHere are the strings again:"
puts orchestra[:string_instruments]
puts "\nHere are the strings after adding 'cello' to strings array: "
orchestra[:string_instruments].push("Cello")
puts orchestra[:string_instruments]

puts "\n\nChanging 'Euphonium' to 'Baritone' in Low Brass array:"
orchestra[:brass][:low_brass][1] = 'Baritone'
puts orchestra[:brass][:low_brass]
