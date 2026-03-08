--
-- entropoy.mac
-- eb_tab_home.lua
-- 
-- home tab for builder
--



local mq = require 'mq'



home = {}

  home.build = {


    -- Base Home
    ebhome = function (...)
      local op = {...}
      
        ImGui.NewLine()

        ImGui.NewLine() 
        
        -- hud start / stop control
        ImGui.TextColored(0.39, 0.58, 0.92, 1, 'hud v' .. mq.TLO.Macro.Variable('maHud').Find('stHUDVersion').Value())
        ImGui.SameLine()
        util.button.hud_start(false, sl)
        util.button.hud_end(false)
        ImGui.NewLine()  
        

        -- radar start / stop control
        ImGui.TextColored(0.39, 0.58, 0.92, 1, 'radar')
        ImGui.SameLine()
        util.button.radar_start(false, sl)
        util.button.radar_end()
        ImGui.NewLine()  

    end
    
    
  }
  






