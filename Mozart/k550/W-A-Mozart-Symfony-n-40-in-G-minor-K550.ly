\version "2.18.2"
\include "italiano.ly"

\header {
  title = "Symfony n° 40 in G minor K550"
  subtitle = "I. Allegro molto"
  subsubtitle = "transcription in E minor for guitar"
  composer = "W.A Mozart"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\markup {
  \vspace #2
}


upper = \transpose sol mi { \relative do' {
  \key sol \minor
  \numericTimeSignature
  \time 4/4
  \voiceOne
  \override StringNumber #'transparent = ##t

  % 1 ----------------------------------------------------------------
  s2 s4 mib8 re
  re4 mib8 re re4 mib8 re
  re4 sib' r4 sib8 la
  sol4 sol8 fa\2 mib4 mib8 re
  % 5 ----------------------------------------------------------------
  do4\3 do\3 r4 re8 do\3
  do4\3 re8 do\3 do4\3 re8 do\3
  do4\3 la' r4 la8 sol
  fad4 fad8 mib\3 re4\3 re8\3 do
  % 9 ----------------------------------------------------------------
  sib4 sib r4 sib'8 la
  la4 do fad,\2 la
  sol4 re r4 sib'8 la
  la4 do fad,\2 la
  % 13 ---------------------------------------------------------------
  sol4 sib la8 sol fa\2 mib
  re1
  dod1
  re2 r4 re,8 re
  % 17 ---------------------------------------------------------------
}
}

lower =  \transpose sol mi { \relative do' {
  \key sol \minor
  \numericTimeSignature
  \time 4/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  % 1
  s1
  sol,2 sol'\4
  sol,2 sol'\4
  sol,2 sol'\4
  % 5
  do,2 do
  do2 do
  do2 do
  re2 re
  % 9
  sol, sol'
  do,2 do'
  sol,2 sol'
  do,1
  % 13
  sol1
  r4 sold la si
  do4 re8 do si4 la
  
  % 17
}
}

\score {
  \new StaffGroup = "traditional with tab" <<
    \new Staff = "traditional" <<
      \clef "treble_8"
      \context Voice = "upper" \upper
      \context Voice = "lower" \lower
    >>
    \new TabStaff = "tab" <<
      \clef moderntab
      \context TabVoice = "upper" \upper
      \context TabVoice = "lower" \lower
    >>
  >>
  }
  \layout {
  }
