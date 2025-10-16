module Engine.Board where

import Data.Word
import Data.Bit
import qualified Data.Map as M

data Figure = King | Qween | Rook | Knight | Bishop | Pawn deriving (Eq, Ord, Show)

data Color = White | Black deriving (Eq, Ord, Show)

-- Bitboard representation

type Bitboard = Word64

data ClassicBoard = ClassicBoard
    {
        boards :: M.Map (Figure, Color) Bitboard
    } deriving (Eq, Show)


