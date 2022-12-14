https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
module CSE230.Shapes where

import CSE230.List
import CSE230.Graphics
import Htdp

-------------------------------------------------------------------------------
main :: IO ()
-------------------------------------------------------------------------------
main = do
  mkRainbow
  mkChess1
  mkChess2
  mkTriangle1
  mkTriangle2
  mkCarpet

-------------------------------------------------------------------------------
-- | Rainbow with 'map'
-------------------------------------------------------------------------------
mkRainbow :: IO ()
mkRainbow = save "img/rainbow.png" rainbow

rainbow :: Image
rainbow = foldr1 f xs
  where
    xs  = map g [1..7]
    f   = error "fill this in"
    g   = error "fill this in"


-------------------------------------------------------------------------------
-- | ChessBoard with 'clone'
-------------------------------------------------------------------------------
mkChess1 :: IO ()
mkChess1   = save "img/chess1.png"   chessBoard1

chessBoard1 :: Image
chessBoard1 = aboves (clone 4 row)
  where
    row     = besides (clone 4 gridSquare)

gridSquare :: Image
gridSquare = aboves [ besides [ whSq, blSq ]
                    , besides [ blSq, whSq ] ]
  where
    whSq   = square 50 solid bgCol
    blSq   = square 50 solid fgCol

-------------------------------------------------------------------------------
-- | ChessBoard with `iter`
-------------------------------------------------------------------------------
mkChess2 :: IO ()
mkChess2   = save "img/chess2.png"   chessBoard2

chessBoard2 :: Image
chessBoard2 = iter 2 f base
  where
    f       = error "fill this in"
    base    = gridSquare


-------------------------------------------------------------------------------
-- | Sierpinski Triangle with recursion
-------------------------------------------------------------------------------
mkTriangle1 :: IO ()
mkTriangle1 = save "img/triangle1.png" sierpinskiTriangle1

sierpinskiTriangle1 :: Image
sierpinskiTriangle1 = triRec 8

triRec :: Int -> Image
triRec 0 = blueTriangle
triRec n = error "fill this in"

blueTriangle :: Image
blueTriangle = triangle 5 solid fgCol

-------------------------------------------------------------------------------
-- | Sierpinski Triangle with `iter`
-------------------------------------------------------------------------------
mkTriangle2 :: IO ()
mkTriangle2 = save "img/triangle2.png" sierpinskiTriangle2

sierpinskiTriangle2 :: Image
sierpinskiTriangle2 = iter 8 f base
 where
   f               = error "fill this in"
   base            = blueTriangle


-------------------------------------------------------------------------------
-- | Sierpinski Carpet with `iter`
-------------------------------------------------------------------------------
mkCarpet :: IO ()
mkCarpet   = save "img/carpet.png" sierpinskiCarpet

sierpinskiCarpet :: Image
sierpinskiCarpet = iter 4 f base
  where
    f            = error "fill this in"
    base         = blueSquare

blueSquare :: Image
blueSquare =  square 4 solid fgCol
