--
-- entropoy.mac
-- drive.lua
-- 
-- driving toon
--


local mq = require('mq')
require 'common'
local openGUI = true
local shouldDrawHUD = true
local name = mq.TLO.Me.Name()
local classID = mq.TLO.Me.Class.ID()



local function imguicallback()
  openGUI, shouldDrawGUI = ImGui.Begin('drive###EntropyDriveButtons'..classID..name, openGUI, ImGuiWindowFlags.NoTitleBar + ImGuiWindowFlags.NoScrollbar)
  
  local toon = 'tempname'
  
  if shouldDrawHUD and (mq.TLO.Macro.Variable('maEnv').Find('build').Value() == nil or mq.TLO.EverQuest.GameState() ~= 'INGAME') then

  elseif shouldDrawHUD then  

    -- start buttons

      ImGui.Columns(4, 'buttons', false)
        cmd_button(echo.icon.allauto, echo.icon.x, echo.icon.y, 'on', 'all macro auto')
        ImGui.SameLine()
        cmd_button(echo.icon.allmanual, echo.icon.x, echo.icon.y, 'off', 'all macro manual')
        ImGui.SameLine()
        cmd_button(echo.icon.mqp, echo.icon.x, echo.icon.y, 'dga /mqp', 'all macro pause')

      -- 2
      ImGui.NextColumn()
        cmd_button(echo.icon.tie, echo.icon.x, echo.icon.y, 'dga /tie', '/tie on/off')
        ImGui.SameLine()
        cmd_button(echo.icon.tienav, echo.icon.x, echo.icon.y, 'dga /tie nav', 'tie with nav')
        ImGui.SameLine()
        cmd_button(echo.icon.tiestick, echo.icon.x, echo.icon.y, 'dga /tie stick', 'tie with stick')

      --3
      ImGui.NextColumn()
       if mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() == 'TRUE' then
          cmd_button(echo.icon.manual, echo.icon.x, echo.icon.y, 'env auto', 'macro manual')
        else 
          cmd_button(echo.icon.auto, echo.icon.x, echo.icon.y, 'env auto', 'macro auto')
        end
        ImGui.SameLine()
        cmd_button(echo.icon.incharge, echo.icon.x, echo.icon.y, 'env incharge', '/incharge')
        ImGui.SameLine()
        cmd_button(echo.icon.campfire, echo.icon.x, echo.icon.y, 'home campfire incharge', 'drop campfire')

      -- 4
      ImGui.NextColumn()
        cmd_button(echo.icon.invis, echo.icon.x, echo.icon.y, 'invis', 'stack invisibility')
        ImGui.SameLine()
        cmd_button(echo.icon.noinvis, echo.icon.x, echo.icon.y, 'dga /nomore invis', 'remove all invisibility')
        ImGui.SameLine()
        cmd_button(echo.icon.nolevi, echo.icon.x, echo.icon.y, 'dga /nomore levi', 'remove all levitation')
      ImGui.Columns()


      -- 5
      ImGui.Columns(4, 'buttons', false)
        --local myname = mq.TLO.Me.DisplayName() or ''
        cmd_button(echo.icon.assist, echo.icon.x, echo.icon.y, 'dge /assist ' .. (mq.TLO.Me.DisplayName() or ' '), 'all /assist')
        ImGui.SameLine()
        cmd_button(echo.icon.hail, echo.icon.x, echo.icon.y, 'dga /hail', 'all /hail')
        ImGui.SameLine()
        cmd_button(echo.icon.intpull, echo.icon.x, echo.icon.y, 'pull one int', 'single intervention pull')

      -- 6
      ImGui.NextColumn()
        cmd_button(echo.icon.autoinventory, echo.icon.x, echo.icon.y, 'dga /autoinventory', 'everyone autoinventoy')
        ImGui.SameLine()
        cmd_button(echo.icon.gather, echo.icon.x, echo.icon.y, 'gather', '/gather')
        ImGui.SameLine()
        cmd_button(echo.icon.here, echo.icon.x, echo.icon.y, 'here', '/here')

      -- 7
      ImGui.NextColumn()
        cmd_button(echo.icon.radar, echo.icon.x, echo.icon.y, 'ui2 radar', 'ui: radar')

      ImGui.Columns()

 	
  end

  ImGui.End()
  
end



mq.imgui.init('drivewindow', imguicallback)

while openGUI do 
  mq.delay(250)
end