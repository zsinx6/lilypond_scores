\version "2.24.4"

\header {
  title = "Gold Saucer"
  instrument = "Violin"
  composer = "Nobuo Uematsu"
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
  \time 4/4
}

part_i = \relative c' {
  d4\staccato g\staccato fis\staccato g8 a
  b4\staccato g\staccato a8 b c e
  d4\staccato g,\staccato d'\staccato g,\staccato
  a8 g fis g a4\staccato e\staccato
  
  d\staccato g\staccato fis\staccato g8 a
  b4\staccato g\staccato a\staccato b8 c
  d4\staccato g,\staccato e'\staccato g,\staccato
  b8 a g fis g2
}

part_ii = \relative c'{
  \key d \major
  fis8 g a b a4\staccato d\staccato
  cis\staccato e\staccato a,\staccato b8 cis
  d4\staccato b\staccato a\staccato g\staccato
  fis\staccato e8 g fis4\staccato d\staccato
  
  cis\staccato d\staccato e4. d8
  e4\staccato fis\staccato g4. fis8
  g4\staccato a\staccato b8 a g fis
  e fis g fis e2
  fis8 g a b a4\staccato d\staccato
  cis\staccato e\staccato a,\staccato b8 cis
  d4\staccato b\staccato a\staccato g\staccato
  fis\staccato gis\staccato a2
}

part_iii = \relative c'{
  \key g \major
  e4 g fis d
  e2. r8 d8
  e4 g fis d 
  e2. r4
  g4 b a fis
  g2. r8 fis
  g4 b a fis
  g2. r4
  e4 g fis d
  e2. r8 d8
  e4 g fis d
  e2. r4
  g4 b a fis
  g2. r8 fis8
  g4\staccato b\staccato a8 b c e
  d4\staccato g,\staccato fis2
}

violin = \relative c'' {
  \global
  \repeat volta 2 {
    \bar ".|:"
    \part_i
    \part_i
    \bar "||"
    \part_ii
    \bar "||"
    \part_iii
  }
  \part_i
  \part_i
  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Violin"
    midiInstrument = "violin"
  } \violin
  \layout { }
  \midi {
    \tempo 2=105
  }
}
