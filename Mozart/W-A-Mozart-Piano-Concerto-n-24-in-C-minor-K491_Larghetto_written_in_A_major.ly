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


upper = \relative do' {
  \key la \major
  \numericTimeSignature
  \time 4/4
  \voiceOne
  \override StringNumber #'transparent = ##t
  % 1
  mi4 mi8. mi16 mi8 la la8 r8
  dod8 sold la si fad2\2
  % 5
  % 9
  % 13
}

lower =  \relative do' {
  \key la \major
  \numericTimeSignature
  \time 4/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  % 1
  la,8 mi' la,8 mi' la,8 mi' la,8 mi'
  mi8\5 re mi\4 la\4 dod\3 si16 la\2 si4
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
