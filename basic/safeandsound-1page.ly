\version "2.24.4"

global = {
  \key c \major
  \time 4/4
}

verse_a_r = {
  a4-3 a8 a g4 g | f f e-3 c8 c | c d d d d4 c4 | r2. r8 d8-2
  a'4 a4 g4 g4 | f4 f4 e4 c4 | d4 f2. | r1
}

verse_b_r = {
  a4-3 a g g | bes2 a4 r4 | d,-2 d d c | r2. r8 f8-3
  a4 a g g | f f e r4 | d4 f g a8 d,~| 1
}

chorus_r = {
  r2 f2-1 | g a | c2. a4 | g a8 g~4 f
  r2 f | g a | c2. a4 | g a8 g~4 f
  r2 f | g a | c1 | g4 a8 g~4 f
  r1 | e-2 | d4 f g a8 d,~ | 1
}

verse_c_r = {
  d4 f g a~ | 1 | d,4 f g a~ | 1
  bes2-4 a | g f | bes a | g f
  d4-1 f g a~ | 1 | d,4 f g a~ | 1
  bes2-4 a~ | 1 | bes2 a~ | 1
}

ending_r = {
  c4-1 f-3 g a | g2 f~ | 1
}

right = \relative c'' {
  \global
  \verse_a_r
  \verse_b_r
  \chorus_r
  \verse_c_r
  \chorus_r
  \noBreak
  \ending_r
  \bar "|."
}

verse_a_l = {
  <bes_2 g_4>1 | <f a> | <bes f> | <a f>
  <bes g>1 | <f a> | <bes f> | <a f>
}

verse_b_l = {
  <bes g>1 | <c_1 f,_5>2. c4 | <bes f>1 | <a f>1
  <c g>1 | <d_1 a_3>2 r4 c4 | <bes f>1~ | 1
}

chorus_l = {
  <bes_2 f_5>1~ | 1 | <a f> | <c g>
  <d bes>1~ | 1 | <a f> | <c g>
  <d bes>1~ | 1 | <a f> | <c g>
  <d_1 a_3>1 | <c_1 g_4> | <bes_2 f_5>1~ | 1
}

verse_c_l = {
  <f_1 bes,_5>1 | <f bes,> | <g c,> | <g c,>
  <a d,>1 | <a d,> | <g c,> | <g c,>
  <f_1 bes,_5>1 | <f bes,> | <g_1 c,_5> | <g c,>
  <a_1 d,_5>1 | <a d,> | <g_1 c,_5>~ | 1
}

ending_l = {
  <a_3 f_5>1 | <c g>~ | 1
}

left = \relative c' {
  \global
  \verse_a_l
  \verse_b_l
  \chorus_l
  \verse_c_l
  \chorus_l
  \noBreak
  \ending_l
  \bar "|."
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {}
  \midi {
    \tempo 4=120
  }
}

\header {
  title = "Safe & Sound"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
  markup-system-spacing.basic-distance = #10
}
