module IC.Client.UI (
  genMainMenu
) where
import qualified GI.Gtk as Gtk
import Data.GI.Base

genMainMenu:: IO Gtk.Grid
genMainMenu = do
  grid <-new Gtk.Grid [#valign := Gtk.AlignCenter,#halign := Gtk.AlignCenter]
  return grid
