{- Haskell Tetris- a Tetris clone written in Haskell. -}

import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

data TetrisBlockType = Straight | L | T | Z | BackwardsZ | Square
data TetrisBlock = Block TetrisBlockType Int Int
-- In the declaration below, the first integer is the score.
-- The last TetrisBlockType is the next block to appear.
data World = MakeWorld Integer [TetrisBlock] TetrisBlockType

displayMode = InWindow "Haskell Tetris" (0, 0) (800, 800)
bgColor = black
fps = 2
initialWorld = MakeWorld 0 [] L

worldToPicture :: World -> Picture
worldToPicture world = Blank -- *** TODO ***

handleKeyPress :: Event -> World -> World
handleKeyPress event world = MakeWorld 0 [] L -- *** TODO ***

updateGameState :: Float -> World -> World
updateGameState seconds world = MakeWorld 0 [] L -- *** TODO ***

main = play displayMode bgColor fps initialWorld worldToPicture handleKeyPress updateGameState
