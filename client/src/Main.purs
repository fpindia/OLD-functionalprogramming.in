module Main where

import Prelude

import Concur.Core (Widget)
import Concur.React (HTML)
import Concur.React.DOM as D
import Concur.React.Props as P
import Concur.React.Run (runWidgetInDom)
import Effect (Effect)

foreign import logo :: String

hello :: forall a. Widget HTML a
hello = do
    D.div [P.className "App"]
      [ D.header [P.className "App-header"]
        [ D.img [P.src logo, P.className "App-logo", P.alt "logo"]
        , D.p []
          [ D.text "Functional Programming India"
          , D.br []
          , D.br []
          , D.p []
            [ D.text "Site currently down for maintenance."
            , D.br []
            , D.text "Drop an email to the "
            , D.a [P.href "mailto:team@functionalprogramming.in"] [D.text "FPIndia Team"]
            , D.text " for any queries."
            ]
          ]
        ]
      ]

main :: Effect Unit
main = runWidgetInDom "root" hello
