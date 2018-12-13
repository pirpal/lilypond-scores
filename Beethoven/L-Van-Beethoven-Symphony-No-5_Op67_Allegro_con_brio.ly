\version "2.18.2"
\language "italiano"

dropD = \markup \line { \circle 6 "=D" }

\header {
  title = "Symphony n°5 Op. 67"
  subtitle = "I. Allegro con brio"
  composer = "L. Van Beethoven"
  opus = "1770-1827"
  piece = \dropD
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key re \minor
  \numericTimeSignature
  \time 2/4
}

upper = \relative do' {
  \global
  % 1-4 up --------------------------------
  | r8 la la la    | fa2\fermata          |
  | r8 sol sol sol | mi2 ( | mi2\fermata) |
  % 5-8 up -------------------------------
  | r8 la [la la]  | fa sib sib sib |
  | la fa' fa fa   | re2            |
  % 9-12 up -------------------------
  | r8 la [la la] | mi sib' sib sib |
  | sol' sol sol mi |

  |   |
}

lower = \relative do' {
  \global
  % 1-5 low ------------------------
  | r8 la, la  la  | fa2        |
  | r8 sol sol sol | mi2 (| mi) |
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } { \clef "treble_8" << \upper \\ \lower >> }
    \new TabStaff \with {
      stringTunings = #guitar-drop-d-tuning
      %stringTunings = #guitar-tuning
      \clef moderntab
    } <<
      \new TabVoice { \voiceOne \upper }
      \new TabVoice { \voiceTwo \lower }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
