\version "2.18.2"
\language "italiano"

\header {
  title = "Sheherazade"
  subtitle = "II. Story of the Prince Kalender"
  subsubtitle = "transcription for guitar"
  composer = "N. Rimsky-Korsakov"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key si \minor
  \time 4/4
}

upper = \relative do' {
  \global
  % 1 ----------------------------------------------------------------
  si'4
  (si8)
  \tuplet 3/2 { la16 si la }
  \tuplet 3/2 { sol16 la sol }
  \tuplet 3/2 { fad16 sol fad }
  \tuplet 3/2 { mi16 sol si }
  \tuplet 3/2 { re16 dod si }
  % 2 ----------------------------------------------------------------
  si4
  (si8)
  \tuplet 3/2 { la16 si la }
  \tuplet 3/2 { sol16 la sol }
  \tuplet 3/2 { fad16 sol fad }
  \tuplet 3/2 { mi16 sol si }
  \tuplet 3/2 { re16 dod si }
  si4
  % 3 ----------------------------------------------------------------
  
  
}

lower = \relative do' {
  \global
  % 1 ----------------------------------------------------------------
  r4 <mi,, si'' sol>4 r2
  % 2 ----------------------------------------------------------------
  r4 <mi si''\4 dod\3>4 r2
  
}

\score {
  \new StaffGroup \with {
    \consists "Instrument_name_engraver"
    %instrumentName = "Guitare Classique"
  } <<
    \new Staff { \clef "treble_8" << \upper \\ \lower >> }
    \new TabStaff \with {
      stringTunings = #guitar-tuning
      \clef moderntab
    } <<
      \new TabVoice { \voiceOne \upper }
      \new TabVoice { \voiceTwo \lower }
    >>
  >>
  \layout { }
}
