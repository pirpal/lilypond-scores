\version "2.18.2"
\language "italiano"

\header {
  title = "Piano Sonata n°2 in F"
  subtitle = "I. Allegro assai"
  subsubtitle = "transcription for guitar"
  composer = "W.A Mozart"
  %tagline = ##f
  opus = "KV280"
}

global = {
  \key fa \major
  \numericTimeSignature
  \time 3/4
  \override StringNumber.transparent = ##t
}

upper = \relative do' {
  \global
  % 1 upper -------------------------
  | <fa, la do>4 <la do> <la do>    |
  | <la do>4. re16 do sib la sol fa |
  | fa'4 mi mib                     |
  | re4 s s                         |
  % 5 upper ------------------------------------
  | do8 sib sib4 r                             |
  | re8 do do4 r                               |
  \set TabStaff.minimumFret = #3
  \set TabStaff.restrainOpenStrings = ##t
  | sib'16 la sol la sol fa mi fa mi re do sib |
  \set TabStaff.minimumFret = #0
  \set TabStaff.restrainOpenStrings = ##f
  | la8 fa'4 mi fa8                            |
  % 9 upper -------------------------------------
  | r8 <fa, re'> r <sib, sol'> r <sol mi'>      |
  \set TabStaff.minimumFret = #3
  \set TabStaff.restrainOpenStrings = ##t
  | sib''16 la sol la sol fa mi fa mi re do sib |
  \set TabStaff.minimumFret = #0
  \set TabStaff.restrainOpenStrings = ##f
  | la8 la'4 sol fa8                            |
  | r8 <fa, re'> r <sib, sol'> r <sol mi'>      |
  % 13 upper ---------------------------------------------------------------------------
  | \tuplet 3/2 { la8 fa' do } \tuplet 3/2 { la'8 fa do } \tuplet 3/2 { sib sol' mi }  |
  | \tuplet 3/2 { fa8 la, do } \tuplet 3/2 { sol'8 do, mi } \tuplet 3/2 { la8 do, fa } |
  |  |
}

lower = \relative do' {
  \global
  % 1 lower -------------------------------------------------------
  | fa,,2.                                                        |
  |fa'4 fa,2                                                      |
  | <fa' la>8 <fa la> <sol sib> <sol sib> <fa la> <fa la>         |
  | <sib, fa'>8 <sib fa'> <sib fa'> <sib fa'> <sib fa'> <sib fa'> |
  % 5 lower -------------------------------------------------------
  | <fa mi'>8 <fa mi'> <fa mi'> <fa mi'> <fa mi'> <fa mi'>       |
  | <fa sol'>8 <fa sol'> <fa sol'> <fa sol'> <fa sol'> <fa sol'> |
  | do'2.                                                        |
  | fa,16 do' la do sol do la do la do la do                     | % FIX
  % 9 lower ------------------------------------------------------
  | sib'8 s sib, s do s |
  | do2.                |
  
}

\score {
  \new StaffGroup <<
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
