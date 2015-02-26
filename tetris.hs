{- Haskell Tetris- a Tetris clone written in Haskell. -}

import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

data TetrisBlockType = I | L' | T | L | Z | Z' | C
instance Eq TetrisBlockType where
	x == y
		| x == I = y == I -- Four blocks up
		| x == L' = y == L' -- Three blocks up and one to the bottom-right
		| x == T = y == T -- Three blocks up and one to the middle-right
		| x == L = y == L -- Three blocks up and one to the top-right
		| x == Z = y == Z -- Two blocks up, one to the top-left, and one to the bottom-right
		| x == Z' = y == Z' -- Two blocks up, one to the bottom-left, and one to the top-right
		| x == C = y == C -- Four blocks in a square
		| otherwise = error "Undefined Tetris Block"

data Rotation = Normal | Right90 | Left90 | UpsideDown
instance Eq Rotation where
	x == y
		| x == Normal = y == Normal
		| x == Right90 = y == Right90
		| x == Left90 = y == Left90
		| x == UpsideDown = y == UpsideDown
		| otherwise = error "Undefined Rotation"

data TetrisBlock = Block TetrisBlockType Rotation
-- In the declaration below, the first integer is the score.
-- The last TetrisBlockType is the next block to appear.
data World = MakeWorld Integer [(Int, Int, Maybe TetrisBlockType)] TetrisBlockType

blockColor :: TetrisBlockType -> Color
blockColor block = case block of
	I -> cyan
	L -> orange
	L' -> blue
	T -> violet
	Z -> red
	Z' -> green
	C -> yellow

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
