\version "2.24.4"

\header {
  title = "Hallelujah"
  instrument = "Violin"
  composer = "Leonard Cohen"
  tagline = " "
}

\paper {
  indent = 20\mm
}

global = {
  \key c \major
  \numericTimeSignature
  \time 3/8
}

violin = \relative c'' {
  \global
  r4 e,8 | g4 g8 | g4 g8 | a a a~| a4 e8 | g4 g8 | g4 g8 | a4 c8 | a4 g8 | a4 a8~ | a8 a a \break
  a4 g8 | g4 f8 | g4. | g4. | r4. | r4 e8 | g4 g8 | g4 g8 | a4 a8 | b4 b8 \break
  c c c~ | c4 a8 | c4 c8 | d4 c8 | d4 d8 | d4 d8 | e4 e8 | e4 d8 | d4. | c | r4. | e,4 g8 \break
  a4. | a | r | a4 g8 | e4. | e | r | e4 g8 | a4. | a | r | a4 g8 \break
  e4.~ | e8 f e | d4.~ | d4 c8 | c4. | r | r | r4 e8 | g4 g8 | g4 g8 | a8 a a~ \break
  a4 e8 | g4 g8 | g4 g8 | a4 c8 | a4 g8 | a4 a8~ | a a a | a4 g8 | g4 f8 | g4. | g \break
  r4. | r4 e8 | g4 g8 | g4 g8 | a4 a8 | b4 b8 | c c c~ | c4 a8 | c4 c8 | d4 c8 | d4 d8 \break
  d4 d8 | e4 e8 | e4 d8 | d4. | c | r | e4 g8 | a4. | a | r | a4 g8 | e4. \break
  e | r | e4 g8 | a4. | a | r | a4 g8 | e4.~ | e8 f e | d4.~ | d4 c8 | c4. \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Violin"
    midiInstrument = "violin"
  } \violin
  \layout { }
  \midi {
    \tempo 4.=60
  }
}
