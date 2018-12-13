\version "2.18.2"
\language "italiano"

dropD = \markup \line { \circle 6 "=D" }

\header {
  title = "Symphony n°5 Op. 67"
  subtitle = "II. Andante con moto (piano version)"
  %subsubtitle = "transposed in D for guitar"
  piece = \dropD
  composer = "L. Van Beethoven"
}

%\markup \vspace #2

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key do \major
  \time 3/8
}

%upper = \transpose do si { \relative do' {
upper = \relative do' {
  \global
  \partial 8 sol,16. do32 |
  % 1-4 up ----------------------
  | mi8 mi16. re32 do16. mi32   |
  | la,8 la16. dod32 re16. mi32 |
  %| sold16. si32 re16. fa32 si,16. re32 |
  %| si,16. re32 sol8 sol16. fa32         |
  % 5-8 up -------------------------------
  %| mi16. do32 fa8. lab16          |
  %| re,16. sib32 mib8 mib16. sol32 |
  %| sib4.                          |
  %| sol8 r mib'16. sol32           |
  % 9-12 up ---------------------------------
  %| sib4. | sol8 r8 lab16.\2 do32  | % flauti 
  %| mib4. | reb8 do4 | sib8 lab4 | sol8. sol16 lab sib |  
  }
%}

%lower = \transpose do si { \relative do' {
lower = \relative do' {
  \global
  \partial 8 s8
  % 1-4 low -------------------------------------
  %| mib,,,4 s8 | s4. | sib'8 sol sib | s4.      |
  % 5-8 low -------------------------------------
  %| s4.        | s4. | <sib fa'>4.   | mib,8 s4 |
  % 9-10 low ------------------------------------
  %| <sib' fa' sib re>4. | <mib mib' sib>8 r4 |
  % 11-12 low --------------------------------
  
  }
%}

% --------------------------------------------------------------------
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