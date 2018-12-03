\version "2.18.2"
\language "italiano"

\header {
  title = "Symphony No. 7"
  subtitle = "II. Allegretto"
  composer = "L. Van Beethoven"
  opus = "92"
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key la \minor
  \numericTimeSignature
  \time 2/4
}

classicalGuitar = \relative do' {
  \global
  % 1 ---------------------------------+
  | <la do mi>4 <la do mi>8 <la do mi> |
  
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } { \clef "treble_8" \classicalGuitar }
    \new TabStaff \with {
      stringTunings = #guitar-tuning
    } \classicalGuitar
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
