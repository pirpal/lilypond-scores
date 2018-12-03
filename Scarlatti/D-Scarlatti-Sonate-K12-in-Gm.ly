\version "2.18.2"
\include "italiano.ly"

\header {
  title = "Sonate K12"
  subtitle = "Presto"
  subsubtitle = "guitar 1"
  composer = "D. Scarlatti"
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
  % 1
  si16 fad re' dod si fad fad' mi re si si' la sol\2 si mi,\2 sol\2
  dod,16 mi lad, dod fad, mi' re dod  re8 si4 lad8
  si8 re4 mi fad lad,8
  % 4
  si8.  si'16 \appoggiatura la32\2 sol16\2 fad\2 mi\3 dod' 
  \appoggiatura mi,32\3 re16\3 dod\4 si\4 si' 
  \appoggiatura la32\2 sol16\2 fad\2 mi\3 dod'
  % 5
  \appoggiatura mi,32\3 re16\3 dod\4 si\4 si' 
  \appoggiatura la32\2 sol16\2 fad\2 mi\3 dod' 
  \appoggiatura mi,32\3 re16\3 dod\3 si\4 si' 
  \appoggiatura fad32\2 mid16\2 re\3 dod\3 si'
  % 6
  
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
