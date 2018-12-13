\version "2.18.2"
\language "italiano"

\header {
  title = "template guitar 2 voices"
  subtitle = "drop-d tuning"
  subsubtitle = "solfege + tab"
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key do \major
  \time 4/4
}

upper = \relative do' {
  \global
  % 1 up ---
    re,1
}

lower = \relative do' {
  \global
  % 1 low ---
  re,,1
  
}
% transposition:
% <upper | lower> = \transpose <from> <to> {
%   \relative do' {
%     % music
%     do4 re mi fa % etc. 
%   }
% }


\score {
  \new StaffGroup <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } { \clef "treble_8" << \upper \\ \lower >> }
    \new TabStaff \with {
      stringTunings = #guitar-drop-d-tuning
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
