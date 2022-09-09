module IC.Client (
startMainMenu
) where
import qualified GI.Gtk as Gtk
import Data.GI.Base
import Control.Monad.Trans.Maybe(MaybeT(..))
import IC.Client.UI(genMainMenu)

startMainMenu::Gtk.Application -> IO ()
startMainMenu app = do
  grid <- genMainMenu
  window <- new Gtk.ApplicationWindow [#application := app
                                      ,#title := "Identity Creative RPG"
                                      ,#child := grid]
  #show window

