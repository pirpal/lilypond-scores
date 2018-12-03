\version "2.18.2"
\language "italiano"

\header {
  title = "Cello Suite n°4"
  subtitle = "BWV 1010"
  subsubtitle = "II. Allemande"
  composer = "J.S Bach"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key mib \major
  \time 4/4
}

upper = \transpose mib la { \relative do' {
  \global
  \override StringNumber #'transparent = ##t
  \partial 8 sib8 
  % 1
  mib8 re16 do sib lab sol lab sib lab sol fa mib re do sib
  % 2
  do16 mib fa sol lab sol fa mib re mib fa re sib8\trill lab
  % 3
  sol16 sib do re mib8 reb' lab, do' fa, mib
  % 4
  fa,16 lab sib do re8 do' sol, sib' mib, re
  % 5
  mib,16 sol lab sib do8 sib' fa, [lab'] re, sib'16 lab
  % 6
  sol16 fa mib sol fa mib re fa <mib, sib' mib>4 mib'16 fa re mib
  % 7
  fa16 mib re do sib do re mib fa sol lab fa sol fa mib fa
  % 8
  sol16 fa mib re do re mib fa sol la sib sol la sol fa sol
  % 9
  la16 sol fa mib re8 do' sol,16 sib do re mib8 re'
  % 10
  do16 sib lab sol fa8 mib' sib,16 re mib fa sol8\3 fa'
  % 11
  mib16 re do sib la8\3 sol' fa16 mib re do sib8 lab
  % 12
  sol16 fa mib re do8 sib la16 mib' sol8 sol fa16 mib
  % 13
  re16 do sib re do sib la do sib re do sib do mib re do
  % 14
  re16 mib fa sol lab8 sib, mib, lab' sol16 fa mib re
  % 15
  do16 re mib fa sol8 sib la16 sib do sib la sol fa mib
  % 16
  re16 do sib re do sib la do sib4 r4
  \bar ":..:"
  }
}

lower = \transpose mib la { \relative do' {
  \global
  \partial 8 s8 
  % 1
  mib,,4 s2.
  
  }
}

\score {
  \new StaffGroup \with {
    \consists "Instrument_name_engraver"
    %instrumentName = "Guitare Classique"
  } <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } { \clef "treble_8" << \upper \\ \lower >> }
    \new TabStaff \with {
      stringTunings = #guitar-tuning
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
