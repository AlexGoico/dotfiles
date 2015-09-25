import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig (additionalKeys)
import Graphics.X11.ExtraTypes.XF86
import XMonad.Util.Run (spawnPipe)
import XMonad.Hooks.DynamicLog
import System.IO

main = do
  xmproc <- spawnPipe "xmobar"
  xmonad $ defaultConfig
    { borderWidth = 2
    , terminal    = "konsole"
    -- Makes space for a dock, in this case xmobar and trayer
    , manageHook  = manageDocks <+> myManageHook <+> manageHook defaultConfig
    , layoutHook  = avoidStruts  $  layoutHook defaultConfig
    , logHook = dynamicLogWithPP xmobarPP
                { ppOutput = hPutStrLn xmproc
                , ppTitle = xmobarColor "green" "" . shorten 75
                }
    -- Rebind Mod to the Windows key
    , modMask = mod4Mask      
    } `additionalKeys`
    [ ((0, xF86XK_MonBrightnessUp),   spawn "xbacklight -inc 5")
    , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 5")
    , ((0, xF86XK_AudioRaiseVolume),  spawn "amixer -q sset Master 5%+")
    , ((0, xF86XK_AudioLowerVolume),  spawn "amixer -q sset Master 5%-")
    ]

myManageHook = composeAll
               [ className =? "Gimp"      --> doFloat
               , className =? "Vlc"       --> doFloat
               , className =? "Octave"    --> doFloat
               ]
