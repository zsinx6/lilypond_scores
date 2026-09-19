\version "2.24.4"

\header {
  title = "Nonesuch - Suzuki Guitar vol 3"
  instrument = "Acoustic Guitar"
  composer = "Playford Collection"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  % Add space for instrument names
  indent = 20\mm
  page-count = 1
}

global = {
  \key g \major
  \time 2/4
}

part_i = \relative c''{
  <<
    {
    \set strokeFingerOrientations = #'(up)
    \partial 8
      e8^\rightHandFinger#4 |
      e^\rightHandFinger#3  c^\rightHandFinger#2 d_4^\rightHandFinger#3 e^\rightHandFinger#4 | 
      c^\rightHandFinger#3 b16^\rightHandFinger#2 c^\rightHandFinger#3 a8^\rightHandFinger#2 e'^\rightHandFinger#4 |
      e c d e |
      c4 a8 e'^\rightHandFinger#4 |
      \break
      e c d e |
      c b16 c a8 e' |
      e c d e |
      c4 a8 b | 
  }\\
  {
    \partial8
    r8
    a,2 |
    a |
    a |
    a |
    c |
    a |
    c |
    a |
  }
  >>
}

part_ii = \relative c''{
 <<
    {
    \set strokeFingerOrientations = #'(up)
    b8^\rightHandFinger#3 g a b^\rightHandFinger#4 |
    c b16 c a8 b^\rightHandFinger#4 |
    b g a b |
    c4 a8 b |
    \break
    b g a b |
    c b16 c a8 b |
    b g a b|
    c4 a8
  }\\
  {
   g,2 |
   a |
   e |
   a |
   g |
   a |
   e |
   a4.
   
  }
  >>
}


guitar = \relative c'' {
  \global
  \part_i
  \break
  \part_ii
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
