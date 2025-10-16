module Main (main) where

import Control.Monad (void)

import qualified Brick.Main as M
import qualified Brick.Widgets.Edit as E

import TUI.Main

main :: IO ()
main = do
    void $ M.defaultMain app $ St [] Nothing
           (unlines [ "Try clicking on various UI elements."
                    , "Observe that the click coordinates identify the"
                    , "underlying widget coordinates."
                    , ""
                    , "Lorem ipsum dolor sit amet,"
                    , "consectetur adipiscing elit,"
                    , "sed do eiusmod tempor incididunt ut labore"
                    , "et dolore magna aliqua."
                    , ""
                    , "Ut enim ad minim veniam"
                    , "quis nostrud exercitation ullamco laboris"
                    , "isi ut aliquip ex ea commodo consequat."
                    , ""
                    , "Duis aute irure dolor in reprehenderit"
                    , "in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                    , ""
                    , "Excepteur sint occaecat cupidatat not proident,"
                    , "sunt in culpa qui officia deserunt mollit"
                    , "anim id est laborum."
                    ])
           (E.editor TextBox Nothing "")
