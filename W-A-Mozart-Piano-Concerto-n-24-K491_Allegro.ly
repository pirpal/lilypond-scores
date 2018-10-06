\version "2.18.2"
\include "italiano.ly"

\header {
  title = "Piano Concerto n°24 in C minor K491 "
  subtitle = "I. Allegro"
  subsubtitle = "transcription in A minor for guitar"
  composer = "W.A Mozart"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\markup {
  \vspace #2
}


upper = \transpose do la { \relative do' {
  \key do \minor
  \numericTimeSignature
  \time 3/4
  \voiceOne
  \override StringNumber #'transparent = ##t
  % violins 1
  % 1 ----------------------------------------------------------------
  do,2.^"up: violons 1 - down: + cello and basso"
  mib2.
  lab2 sol4
  fad4\2 mib' r8. fad,16
  % 5 ----------------------------------------------------------------
  lab4 sol fa
  mi4 reb' r8. mi,16
  solb4 fa mib
  re4 si' r8. re,16 
  % 9 ----------------------------------------------------------------
  mib4\2 do' r8. mib,16\2
  lab4 lab, la
  sib4 si do
  fa4 sol sol,
  % 13 ---------------------------------------------------------------
  do2.
  mib2.
  la2 sol4
  fad4 mib' r8. fad,16
  % 17 ---------------------------------------------------------------
  lab4 sol fa
  mi4 reb' r8. mi,16
  solb4 fa mib
  re4 si' r8. re,16
  % 21 ---------------------------------------------------------------
  mib4\2 do' r8. mib,16\2
  }
}
lower = \transpose do la { \relative do' {
  \key do \minor
  \numericTimeSignature
  \time 3/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  % cello and basso
  % 1 ----------------------------------------------------------------
  do,,2.
  mib2.
  lab2 sol4
  fad4\5 mib'\3 r8. fad,16
  % 5 ----------------------------------------------------------------
  lab4 sol fa
  mi4\5 reb'\3 r8. mi,16\5
  solb4 fa mib
  fa4 si\3 r8. fa16
  % 9 ----------------------------------------------------------------
  mib4\5 do'\3 r8. mib,16\5
  lab4 lab, la
  sib4 si do
  fa sol sol,
  % 13 ---------------------------------------------------------------
  do8 do' do do do do
  do8 do do do do do
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
