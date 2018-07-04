\version "2.19.82"


\include "english.ly"

% \paper {
%   #(set-paper-size "a4")
%  % #(set-paper-size "letter")
% }

\header {
    composer            = "Czerny, C."
    mutopiacomposer     = "CzernyC"

    title               = \markup {
      \center-column {
        \line { "Practical Method for"  }
        \line { "Beginners on the Pianoforte" }
        \italic \line {  }
    }}
    mutopiatitle        = "Practical Method for Beginners on the Pianoforte, No. 1"

    opus                = "Op. 599"
    mutopiaopus         = "Op. 599, No. 6"
    
    source              = "Library of Musical Classics, No.146, New York: G. Schirmer, 1893. Plate 11038."
    style               = "Technique"
    license             = "Public Domain"
    maintainer          = "Daniel Studzinski"
    maintainerWeb       = "https://github.com/upsaratus/Czerny-op599"
    mutopiainstrument   = "Piano"

 footer = "Mutopia-2018/07/03"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
global = {

  \key c \major
  %\numericTimeSignature 
  \time 4/4
}


RHI = \relative c'' {
  \voiceOne
  \clef treble
  \global
   
}  

RHII = \relative c'' {
  \voiceTwo
  \clef treble

   \override Fingering.direction = #UP

   g4-1 b-2 d-4 g-5
   d1-2
   c4-1 a'-5 c,-1 a'-5
   b,-1 g'-5 b,-1 g'-5
   d-1 g-2 b-4 d-5
   b1-3
   c4-4 a-2 c-4 a-2
   g-1 g g2  \bar ":..:" \break
   
   a-2 g4-1 a-2 
   b1-3
   a2-2 g4-1 a-2
   b1-3
   d4-5 b-3 d-5 b-3
   g-1 b-3 g-1 b-3
   c-4 a-2 c-4 a-2
   g-1 g g2 \bar ":|."
   
   
}

LHI = \relative c' {
  \voiceThree
  \clef treble
  \global
  
  g1-5
  g4-5 a-4 b-3 c-2 
  d2-1 d-1
  g,-5 g-5
  g1-5
  g4-5 d'-1 b-3 g-5
  d'2-1 d-1
  g,1-5
  
  d'4-1 c-2 b-3 a-4
  g-5 d'-1 b-3 g-5
  d'4-1 c-2 b-3 a-4
  g-5 b-3 d-1 b-3
  g1-5
  g-5
  d'2-1 d-1
  g,1-5


}

LHII = \relative c' {
  \voiceFour
  \clef treble
  \global
} 


Dynamics = {
}


\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number "6". }
        \line \large { }
        \italic \line {  }
      }
    }
    shortInstrumentName = ""
    midiInstrument = "acoustic grand"
  }
  <<
    \new Staff="RH"
    <<
      \new Voice = "RF"
      \RHI
      \new Voice= "RS"
      \RHII
    >>
    
    \new Staff="LH" 
    <<
      \new Voice = "LF"
      \LHI
      \new Voice= "LS"
      \LHII
    >>
  >>
  \layout { }
  \midi {\tempo 2 = 88 }
}