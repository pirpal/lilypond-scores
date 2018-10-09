\version "2.18.2"
\include "italiano.ly"

\header {
  title = "Quatuor à cordes en ré mineur K421"
  subtitle = "III. Menuetto allegro"
  subsubtitle = "transcription for guitar"
  composer = "W.A Mozart"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\markup {
  \vspace #2
}


upper = \relative do' {
  \key re \minor
  \numericTimeSignature
  \time 3/4
  \voiceOne
  \override StringNumber #'transparent = ##t
  % VIOLIN 1
  \partial 4 re8. re16
  % 1 ---------------
  re4 la fa'
  fa8 mi re dod re fa
  la4 la la
  la4 mi sol8. sol16
  % 5 --------------
  sol4 sol sol
  sol4 re fa8. fa16
  fa4 fa fa
  fa8 mi mi dod re4
  % 9 ---------------------
  mi4 la, dod
  re2 \bar ":..:" re8. re16
 
  % 13
}

lower = \relative do' {
  \key re \minor
  \numericTimeSignature
  \time 3/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  % VIOLIN 2 + CELLO
  \partial 4 r4
  % 1
  re,2 la'8. la,16
  sib4 sol' la
  re,4 r4 fa
  la4 dod mi\2
  % 5
  do,2 mi8. mi16
  mi4 si re
  sib re sold4
  la4 mi re
  % 9
  % 13
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
