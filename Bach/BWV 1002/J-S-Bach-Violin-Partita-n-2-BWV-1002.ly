\version "2.18.2"
\include "italiano.ly"

\header {
  title = "Violin Partita n°2 in B minor BWV 1002"
  subtitle = "II. Double"
  subsubtitle = "for guitar"
  composer = "J.S Bach"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key si \minor
  \time 4/4
  \override StringNumber #'transparent = ##t
}

classicalGuitar = \relative do' {
  \global
  \partial 16 fad16\2
  % 1
  si,16\4^"C7" re\3 fad\2 si sol\2 mi dod mi lad, sol' fad mi re si fad la
  sol16 fad' mi re dod mi sol si, lad dod fad, mi re si' dod, dod'
  re16^"C2" fad, si, dod re mi fad sol la re, fad la re mi fad la,
  si16 sol si re sol si, sol mi^"C2" dod mi la sol' fad re, sol mi'
  % 5
  dod16 la dod mi la do, la fad red fad si fad'\2 la do si la
  sol16\2 si sol\2 mi si re dod si lad^"C2" sol' fad mi, re fad si re
  sold,\4 fad'\2 mi\2 re, dod mi sol si, lad fad' dod' mi re fad, si, re'
  dod fad dod lad fad lad dod mi, re fad' re si sold si mi lad,
  % 9
  si mi fad dod re si sold' si, mid,\5^"C6" dod'\3 si' sold\2 la^"C4" dod,\3 fad, la'
  sold\2^"C9" dod,\4 mid\3 sold\2 dod mi,\3 lad,\4 mi'\3 si,\6^"C7" fad'\5 mi'\3 dod\3 re\3 fad\2 si dod
  re^"C10" mid,\3 sold,\5 mid'\3 dod,\6^"C9" re'' mid,\3 dod' si la sold fad dod fad sold mid
  fad dod lad mi' re mid, sold si lad^"C2" fad lad dod  fad8 r8
  \bar ":..:"
  % 13
  s2. s8. dod16
  dod16 sol' mi dod lad fad dod' mi, re fad si re, dod si lad mi'
  re si re fad si sol fad mi re fad la do si la fad' la,
  sol si mi sol fad la red, mi si mi red fad si fad\2 red\3 la\4
  sold si mi sold\2 si re do si do la mi do la sol' fad mi
  % 17
  red\3 fad\2 la do si la red, la' sol si sol mi sol, sol'\2 re' sol,\2
  mi si do mi lad, si red, mi sol, mi' si' sol' fad mi si red
  mi, sol si mi si sol mi sol dod, la' mi' sol, fad la' mi, sol'
  re, sol' fad mi re fad lad si mi, dod la dod re, fad' dod, mi'
  % 21
  re, mi' re dod si re fad sol do, la fad la re, fad la do
  sol' si, red, fad si red sol la sol mi si re do mi sol si,
  lad sol' fad mi, re si'' lad si mid, fad lad, si fad re' dod lad
  si si, re fad si re fad lad si fad re si si8 r8
  \bar ":..:"
  
}

\score {
  \new StaffGroup = "traditional with tab" <<
    \new Staff = "traditional" <<
      \clef "treble_8"
      \classicalGuitar
    >>
    \new TabStaff = "tab" <<
      \clef moderntab
      \classicalGuitar
    >>
  >>
  }
  \layout {
  }
