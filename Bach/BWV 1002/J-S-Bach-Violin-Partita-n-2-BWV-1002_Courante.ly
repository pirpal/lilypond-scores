\version "2.18.2"
\include "italiano.ly"

\header {
  title = "Violin Partita n°2 in B minor BWV 1002"
  subtitle = "III. Courante"
  subsubtitle = "for guitar"
  composer = "J.S Bach"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key si \minor
  \time 3/4
  \override StringNumber #'transparent = ##t
}

classicalGuitar = \relative do' {
  \global
  \partial 8 si8\3
  % 1
  si8\3 si, re\5 fad si\3 re 
  dod fad, lad, mi' re dod
  si re fad si re fad
  mi la, dod, sol' fad mi
  % 5
  re fad la re fad la
  sol si, mi, re' dod si
  lad sol' fad mi, red la'
  sold fad' mi re, dod mi
  % 9
  lad mi' <si, fad' mi'> re' dod re
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
