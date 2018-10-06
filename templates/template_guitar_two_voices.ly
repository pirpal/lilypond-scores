\version "2.18.2"
\include "italiano.ly"

\header {
  title = "title"
  subtitle = "subtitle"
  subsubtitle = "subsubtitle"
  composer = "composer"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\markup {
  \vspace #2
}


upper = \relative do' {
  \key la \minor
  \numericTimeSignature
  \time 3/4
  \voiceOne
  \override StringNumber #'transparent = ##t
  % 1
  % 5
  % 9
  % 13
}

lower = \relative do' {
  \key la \minor
  \numericTimeSignature
  \time 3/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  % 1
  % 5
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
