\version "2.24.4"

\header {
  title = "Go Tell Aunt Rhody - Guitar 3"
  instrument = "Acoustic Guitar"
  composer = "Folk Song - Arr. S. Salz"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  % Add space for instrument names
  indent = 20\mm
  page-count = 1
  % line vertial distance
  system-system-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #20
}

global = {
  \key g \major
  \time 4/4
}

intro = \relative c''{
  b8 b c b~b2 |
  b8 b c b~b2
}
part_i = \relative c''{
  b8 b c b~b2 |
  b8 b c b~b2 |
  \break
  c8 c d c~c2 |
  d,8 d e d~d2 |
}

part_ii = \relative c''{
  b4 b bes bes |
  a a gis gis |
  g g fis d|
  d1 |
}

part_iii  = \relative c''{
  g2 g4 a |
  b2 b |
  c c |
  b4 a g2 |
  g g4 a |
  \break
  b2 b |
  c c |
  d4 c8 c b b a a |
  b b c b~b2 |
}

part_iv = \relative c''{
  b8 b c b~b2 |
  c8 c d c~c2 |
  d,8 d e d~d2 |
}

part_v = \relative c''{ 
  b4. c8~c4 cis4~|
  cis8 cis c b~b2 |
}

guitar = \relative c' {
  \global
   \repeat volta 2 {
      \bar ".|:"
      \intro
  }
  \part_i
  \break
  \part_ii
  \break
  \part_iii
  \break
  \part_iv
  \break
  \part_ii
  \break
  \part_v
  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Acoustic Guitar"
    midiInstrument = "acoustic guitar (nylon)"
  } \guitar
  \layout { }
  \midi {
    \tempo 2=105
  }
}
