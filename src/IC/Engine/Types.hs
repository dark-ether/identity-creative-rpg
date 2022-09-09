module IC.Engine.Types (
  ICWorld(..)
, HexCoordinates(..)
, ICWorldTile(..)
, WTileType(..)
) 
where
import qualified Data.Map as Map
import Data.Vector(Vector)
import Data.Map(Map)
import Data.Text(Text)

data ICWorld = ICWorld {
  _worldMap :: Map HexCoordinates ICWorldTile
  --,_wcities :: Vector ICCity
  --,_wdungeons :: Vector ICDungeon
}

data HexCoordinates = HexCoordinates {
  _s:: Integer
, _q:: Integer
, _r:: Integer
}
  deriving (Eq,Show,Ord)

data ICWorldTile = ICWorldTile {
  _wTileType:: WTileType
}

data WTileType =  WTPlains
               |  WTMountains
               |  WTForest
