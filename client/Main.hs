module Main (main) where
import IC.Client(startMainMenu)
import qualified GI.Gtk as Gtk
import Data.GI.Base

main :: IO ()
main = do
  app <- new Gtk.Application [#applicationId := "identity-creative-rpg.gtk4"
                             ,On #activate (startMainMenu ?self)]
  #run app Nothing
  return ()
