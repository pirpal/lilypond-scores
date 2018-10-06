\version "2.18.2"
\include "italiano.ly"

\header {
  title = "English Suite n°2 BWV 807"
  subtitle = "II. Allemande"
  subsubtitle = "transcription for guitar"
  composer = "J.S Bach"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\markup {
  \vspace #2
}


upper = \relative do' {
  \key la \minor
  \numericTimeSignature
  \time 4/4
  \voiceOne
  \override StringNumber #'transparent = ##t
  \partial 16 mi16
  % 1
  mi8. mi16 la sold la si re,\3 fa\2 mi\2 fa\2 (fa\2) fa\2 mi\2 re\3
  do16 si la si do4 la'16 la sold la si4
  (si8) mi,\2 la8. sol16\2 fa\2 mi\2 re\3 mi\2 fad\2 sol\2 la fa\2
  sol8 re sol8. fa16 mi re do si la do si do
  % 5
  fad,8. la16 sold la la\prall sold32 la si2
  re16 fa mi re do8.\prall si16 si sol si mi <si mi>8. <si mi>16
  sol'8.\2 la16 fad8.\2 fad16\2 fad\2 la sol\2 fad\2 mi\2 red mi fad
  la,16 do si do red, do' si la sol fad mi fad sol la si sol
  % 9
  do8.\mordent si16 la sol fad mi la la sol fad sol mi fad sol
  dod,16 mi re mi lad, sol' fad mi red dod si8 si'8.\mordent si16
  mi16 do si la fad'8.\mordent fad16 fad (sol32 la sol16 fad) fad8.\mordent mi16
  mi16 re do si do sold la do mi2
  \bar ":..:"
  \bar ":..:"
  % "partial"
  s2. s8. si16
  % 13
  si8. si16 re, fa mi re sold mi fa mi si' re, mi fa
  dod16 si la si dod re mi fa sol fa mi fa sol sib la sol
  do8. do16 si do do\prall si32 do re8. mi16 la,16 si do re
  si8.\prall re16 fa, la sol fa si sol la sol re' mi, fa sol
  % 17 
  \set TabStaff.minimumFret=#4
  \set TabStaff.restrainOpenStrings=##t
  mi8. si''16 re, fa mi re sold mi fa mi si' re, mi fa
  dod16 si dod la sol'8. sol16 sol la fa sol mi8.\prall la16 
  sol16 fa mi re fa8. fa16 fa si, do re mi8. mi16
  \set TabStaff.minimumFret=#0
  \set TabStaff.restrainOpenStrings=##f
  mi16 do si la re8. re16 re sold, la si do8. do16
  % 21
  do16 la sol fa sib la sold la re, sold la si do si do la
  si8 mi, mi'8. mi16 mi do si la la'8. la16
  \set TabStaff.minimumFret=#4
  \set TabStaff.restrainOpenStrings=##t
  la16 fa mi re si8. si'16 si la32 sold la16 re, do8 si16\prall do
  \set TabStaff.minimumFret=#0
  \set TabStaff.restrainOpenStrings=##f
  la16 sol fa mi fa dod re fa <dod mi la>2
  \bar ":..:"
}

lower = \relative do' {
  \key la \minor
  \numericTimeSignature
  \time 4/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  \partial 16 s16
  % 1
  <la, mi' la do>4 s2.
   <la mi' la>2 s2
  s1
  s1
  % 5
  s2 sold'16 la si\3 sold re fa mi re
  s1
  s1
  s1
  % 9
  s1
  s1
  s1
  s2 <mi, si' mi sold si>2
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
