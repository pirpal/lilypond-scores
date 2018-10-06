\version "2.18.2"
\include "italiano.ly"

\header {
  title = "Piano Concerto n°24 in K491 "
  subtitle = "II. Larghetto" % p 35
  subsubtitle = "transcription for guitar"
  composer = "W.A Mozart"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\markup {
  \vspace #2
}


upper = \transpose do solb { \relative do' {
  \key do \minor
  \numericTimeSignature
  \time 4/4
  \voiceOne
  \override StringNumber #'transparent = ##t
  % 1
  sib4\2 sib8.\2 sib16\2 sib8\2 mib mib4
  sol8 re mib fa sib,2
  sol4 sol8. sol16 sib8. sol16 mib8 r8
  re8 re re re mib4 r4
  % 5
  % 9
  % 13
  }
}

lower =  \transpose do solb { \relative do' {
  \key do \minor
  \numericTimeSignature
  \time 4/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  % 1
  mib,,8 sib' mib, sib' mib, sib' mib, sib'
  sib'8\2 lab sib\2 do\2 sol fa16 mib fa4
  mib,8 sib' mib, sib' mib, sib' mib, sib'
  <fa sib>8 <fa sib> <fa sib> <fa sib> <mib sib'>4 r4
  
  % 5
  % 9
  % 13
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
