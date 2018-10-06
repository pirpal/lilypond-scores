\version "2.18.2"
\include "italiano.ly"

\header {
  title = "English Suite n°2 BWV 807"
  subtitle = "Sarabande"
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
  \time 3/4
  \voiceOne
  % 1
  <mi, la do>4 <mi do'>8 [ <re si'> <do la'> <si re sold> ]
  <do la'>4 <do la'>2
  <la' do mi>4 <do mi>8 [ <si re> <la do> <sold si> ]
  <sold si>4 <la do>8. si16 <mi, la>4
  % 5
  do'8 la fa mi fa la
  re8 sol, fa mi fa re'
  mi8 re fa mi re do
  <si sol'>4 <si sol'>2
  % 9
  sib8 la sib sol' mi sib
  la8 sol la la' mib re
  \set TabStaff.restrainOpenStrings=##t
  \set TabStaff.minimumFret=#5
  si'8 [ do ] fa, mi 
  \set TabStaff.restrainOpenStrings=##f
  \set TabStaff.minimumFret=#0
  re do
  fa,8 [ re ] <mi sol do>2
  \bar ":..:"
  % 13
  \bar ":..:"
  <mi sol>4 <mi sol>8 <re fa> <do mi> <si re>
  <do mi>4 <do mi>2
  red8 la' sol fad sol16 si mi8
  red8 fad16 mi fad4 si,
  % 17
  sol'8 mi do si lad sol'
  fad8 do si la sold fa'
  mi8 <la do> <sol si> <fad la> <mi sol> <red fad>
  \appoggiatura <red fad>8 <mi sol>4 \appoggiatura fad8 <sol, si mi>2
  % 21
  sol'8 la sol fa mi re
  sol8 fa <dod sol'>2
  fa8 sol fa mi re do
  fa8 mi <si fa'>2
  % 25
  mi8 re fa mi la sol
  <fa sib>8 <mi la> <re sold> <do\3 la'> <si fa'> <do mi>
  <la red>8 mi <la re> do <sold si> la
  <la do mi>4 <la do mi>2
   \bar ":..:"
}

lower = \relative do' {
  \key la \minor
  \numericTimeSignature
  \time 3/4
  \voiceTwo
  % 1
  la,4 s2
  s4 mi'8 re do si
  <la mi'>2 r4
  mi'4. re8 do si
  % 5
  la4 la r4
  si'4\3 sol, r4
  do'8 si la sol fa4
  fa8 mi sol fa mi re
  % 9
  mi2 r4
  fa2 r4
  r4 sol4 sol,
  <do sol'>4 do2
  % 13
  la4 ~la sol
  r4 r8 si8 la sol
  fad4 mi mi'
  si8 [ dod ] si la sol fad
  % 17
  mi4 mi' r8 mi,8
  red'4 red r8 re8
  s2.
  mi,4 sol si
  % 21
  mi4 fa sol
  la4 r4 r4
  re,4 mi fa
  sol4 r4 r4
  % 25
  do8 si la sol fa mi
  s2.
  fad,4 mi mi'
  la,8 do16 mi <la, mi'>2

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
