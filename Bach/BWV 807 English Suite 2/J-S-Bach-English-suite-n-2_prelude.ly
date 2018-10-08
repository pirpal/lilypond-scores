\version "2.18.2"
\include "italiano.ly"

\header {
  title = "English suite n°2 BWV 807"
  subtitle = "Prelude"
  subsubtitle = "for two guitars"
  composer = "J.S Bach"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

upper = \relative do' {
  \key la \minor
  \numericTimeSignature
  \time 3/4
  % 1
  r8 mi8\2 la, la' sol16 mi fa re
  mi re do si do si do fa si, mi la, re
  sold, re' si sold re' si sold si mi, re' do si
  do si la sold la si do fa, si mi, la si
  % 5
  sold8 [ mi ] sold [ si ] sold [ mi ]
  la16 sol' mi dod sol' mi dod mi la, sol fad mi
  fad8 [ re' ] fad [ la ] fad [ re ]
  sol16 fa re si fa' re si re sol, fa' mi re
  % 9
  mi16 re do si la do re fad sol si, do la
  si16 re mi fa sol la, sib sol sol' la, sib sol
  la16 do re mi fa sol, la fa fa' sol, la fa
  sol16 mi sol si mi fa, sol mi mi' fa, sol mi
  % 13
  fa16 re fa la re mi, fa re re' mi, fa re
  mi16 re do si do sold la mi' re si do la
  
}

lower = \relative do' {
  \key la \minor
  \numericTimeSignature
  \time 3/4
  % 1
  s2.
  r8 mi, la, la' sol16 mi fa re
  mi8 [ mi, ] sold [ si ] sold [  mi ]
  la [ mi ] la la' sol16 mi fa re
  % 5
  mi16 re si sold re' si sold si mi, re' do si
  dod8 [ la ] dod [ mi ] dod [ la ]
  re16 do' la fad do' la fad la re, do' si la
  si8 [ sol ] si [ re ] si [ sol ]
  % 9
  do8 [ sol ] do, [ do' ] si16 sol la fad
  sol8 [ fa ] mi [ [ re ] mi [ do ]
  fa8 [ mi ] re [ do ] re [ si ]
  mi8 [ re ] dod [ si ] dod [ la ]
  % 13
  re8 [ do ] si [ la ] si [ sol ]
  do8 [ sol ] do [ do' ] si16 sold la fad
  
  
  
  % 17
}

\score { <<
  \new StaffGroup {
    \new TabStaff { \tabFullNotation \clef "treble_8" << \upper >> }
  }
  \new StaffGroup {
    \new TabStaff { \tabFullNotation \clef "treble_8" << \lower >> }
  }
         >>
  \layout { }
}
