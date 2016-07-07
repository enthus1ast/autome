import private.imports, winlean

type
  MouseCtx* = ref object
    speed*: int
  WindowRef* = ref object
    handle*: Handle

let
  ## default mouse context
  mouse = MouseCtx()

include private.common
include private.window
include private.mouse
include private.keyboard

when isMainModule:
  echo repr findWindow("Windows Powershell")
  #mouse
    #.move(600, 200)
  echo mouse.pos
  # var p: POINT
  # discard getCursorPos(p.addr)
  # echo setCursorPos(800, 600)
  # discard getCursorPos(p.addr)
  # echo $p