\version "2.18.2"
\include "italiano.ly"

dropD = \markup \line { \circle 6 "= D" } 

\header {
  title = "Harpsichord Concerto n°1 in D minor BWV 1052"
  subtitle = "I. Allegro"
  subsubtitle = "transcription for solo guitar"
  composer = "J.S Bach"
  piece = \dropD 
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\markup {
  \vspace #2
}


upper = \relative do' {
  \key re \minor
  %\numericTimeSignature
  \set TabStaff.stringTunings = #guitar-drop-d-tuning
  \time 4/4
  \voiceOne
  \override StringNumber #'transparent = ##t
  % 1 --------------------------------------------------------------------------
  re,16 mi fa8 mi re la' re4 la8
  sib8 sol16 mi la8 fa16 re sol8 mi16 dod la8 sib'
  sib8 sol16 mi la,8 dod' (dod) sib16 sol la,8 mi'' (
  mi8) dod16 la sib sol la fa sol mi fa re mi dod re si
  % 5 --------------------------------------------------------------------------
  dod16 la si dod re mi fa sol la sib do8 do16 re mib8
  fad,8 sol dod, re sold, r8 la r8
  re32 (mi fa sol la16) mi fa re mi dod re la sib sol la re mi dod
  re16 fa sol mi fa la sib sol la32 (dod re mi) fa16 dod re la sib sol
  % 9 --------------------------------------------------------------------------
  la16 fa sol mi <fa re'> la <sib dod> sol la re mi dod re fa sol mi
  fa32\2 (la sib dod) re16 la\2 sib sol\2 la mi\2 fa re mi dod re fa sol mi
  \set TabStaff.restrainOpenStrings=##t
  \set TabStaff.minimumFret=#8
  fa16 la sib sol la re sib sol la re sol, mi fa re' mi, dod
  % 12 -----
  re16 re' la fa
  \set TabStaff.minimumFret=#5
  re la' fa re la fa' re la fa re' la fa 
  % 13 -------------------------------------------------------------------------
  \set TabStaff.restrainOpenStrings=##f
  \set TabStaff.minimumFret=#0
  re16 mi fa8 mi re la' re4 la8
  % sib8 <mi, sol>16 <dod mi> la'8 <re, fa>16 <sib re> sol'8 <mi sol>16 dod la8 <mi' sib'>16 dod
  sib8 <mi, sol>16 <dod mi> la'8 <re, fa>16 <sib re> sol'8 <mi sol>16 dod la8 <mi' sib'>16 dod
  sol8 <sol' sib>16 mi la,8 <sol' dod>16 mi sol,8 <sib' dod>16 sol la,8 <sib' mi>16 sol
  la,8 <dod' mi>16 sol sib sol <la dod> fa <sol sib> mi <fa la> re  <mi sol> dod <re fa> si
  % 17 -------------------------------------------------------------------------
  <dod la'>16 la si dod re mi fa sol la sib do8 do16 re mib8
  <re, fad>8 sol <mi dod'> <fad re'> <dod mi> <re fa> <mi dod'> <fa re'>
  <sib fa'>8. mi16 <la, re>16 do sib la <fa re'>8. do'16 <mi, sib'> la sold fad
  <si, mi>8 fad'16 sold la si do re mi fa sol8 sol16 la sib8
  % 21 -------------------------------------------------------------------------
  <mi,, sib' dod>8 <fa la re> <si, re sold> <do mi la> red8 r8 mi r8
  la'32\2 (si\2 do\2 re mi16) si\2 do la si sold la mi\2 fa\2 re\3 mi\2 la si sold
  la16\2 do\2 re si\2 do,, mi fa re mi32 (sol la si do16) sol <mi la> do <fa sol> re
  mi16 do re si <do la'> mi <fa sold> re mi la si sol la do re si
  % 25 -------------------------------------------------------------------------
  do16 sold la mi fa re mi si do'' sold la mi fa re mi si
  
  
  % 29 -------------------------------------------------------------------------
}

lower = \relative do' {
  \key re \minor
  %\numericTimeSignature
  \time 4/4
  \voiceTwo
  \override StringNumber #'transparent = ##t
  % 1
  s1
  s1
  s1
  s1
  % 5
  s1
  s1
  re,,1
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
