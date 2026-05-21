-- example mod template with all the available event hooks you can use
-- you can use all of these in both standard utility 'mod' type mods
-- as well as in custom 'level' type mods

return {

  --------------
  -- REQUIRED --
  --------------

  -- called once when the game loads (or when your mod is marked 'active')
  -- should return true unless there's an issue with loading any files you need
  load = function(mod_id)
    print('Hello world!', mod_id)
    return true
  end,

  -----------------
  -- CORE EVENTS --
  -----------------

  -- called twice every frame, once with type == 'obj' and once with type == 'ui'
  -- these are two seperate layers, the cam_x/cam_y for drawing relative to the camera
  draw = function(type, cam_x, cam_y)

  end,

  -- called every frame
  -- anything that should move smoothly should be updated every frame
  step = function(dt)

  end,

  -- called every 0.1s
  tick = function()

  end,

  -- called every 1s
  tock = function()

  end,

  ---------------
  -- GAMESTATE --
  ---------------

  -- called any time a player starts a level
  -- the 'mod_id' parameter is more for custom levels to check it's 'their' level loading
  start = function(mod_id)

  end,

  -- called whenever the game is saved
  -- you can check the current 'slot' with game.g.file_slot
  save = function()

  end,

  -- called when the game is closed, chance to save any mod data you want to
  quit = function()

  end,

  -----------
  -- INPUT --
  -----------

  -- called from mouse clicking, type is either 'pressed' or 'released'
  -- 'button' is either 1 (left) 2 (right) or 3 (middle)
  -- hook is either 'before' or 'after' the game's own mouse click code
  mouse = function(type, button, hook)

  end,

  -- called from pressing a key, 'key' is the actual value of the key
  -- 'scancode' is the key value relative to the standard US qwerty keyboard layout
  -- 'is_repeat' is true if double-tapped
  key = function(key, scancode, is_repeat)

  end,

  -- called from a gamepad input press
  -- gtype is 'pressed' or 'released'
  -- button is all the standard love gamepad buttons: https://love2d.org/wiki/GamepadButton
  -- as well as a few custom ones for big triggers: 'triggerleft', 'triggerright'
  -- plus custom ones for analog stick flicks: 'dpup2', 'dpdown2', 'dpleft2', 'dpright2'
  gamepad = function(gtype, button)

  end,

  -- called on mousewheel scroll, px and py are scroll amount
  -- inv is true on platforms that flip the scroll direction, i.e. MacOS
  scroll = function(px, py, inv)

  end,

  -- called as the player types on their keyboard
  textinput = function(text)

  end,


}
