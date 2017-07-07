=begin
Design and build a nested data structure to represent a real-world construct.

Build something that will use a mix of hashes and arrays.

Once you've built it, print a few individual pieces of deeply nested data
from the structure, showing that you know how to use multiple indexes or
hash keys (or both) to access nested items.

Try to demonstrate a few different types of access.
=end
orchestra = {
  woodwinds: {
    flutes: [
      'Side-Blown Flute',
      'End-Blown Flute',
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
      "B♭ trumpet",
      "Slide Trumpet",
      "Cornet",
    ],
  },
  strings: [
    "violin",
    "bass",
    "viola",
    "cello"
    ]
}
p orchestra
