--
-- entropoy.mac
-- hud_v2.lua
-- 
-- hud v2 less data, smaller footprint
--

local mq = require 'mq'
require 'common'
require 'eb_tab_event'


local openGUI = true
local shouldDrawHUD = true
local name = mq.TLO.Me.Name()
local classID = mq.TLO.Me.Class.ID()


local function imguicallback()
  openGUI, shouldDrawHUD = ImGui.Begin(util.hud.headder() .. '###EntropyHUD_v2'..classID..name, openGUI)
  
  if shouldDrawHUD and (util.env.build() == nil or mq.TLO.EverQuest.GameState() ~= 'INGAME') then

  elseif shouldDrawHUD then  
    if ImGui.BeginTabBar('##mytabs') then

-- home tab
      if ImGui.BeginTabItem('Home') then
        settableflags()
       	if ImGui.BeginTable('hud', 6, tableFlags) then

          -- row 1
      		ImGui.TableNextRow()	
        		ImGui.TableNextColumn()
              ImGui.TextColored(0.39, 0.58, 0.92, 1, 'mode')
      			ImGui.TableNextColumn()
      			  ImGui.TextColored(1, 1, 1, 1, ent.mode)
      			ImGui.TableNextColumn()
      			  ImGui.TextColored(0.39, 0.58, 0.92, 1, (mq.TLO.Macro.Variable('maTie').Find('stTieMode').Value() or ''))
      			ImGui.TableNextColumn()
      			  ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Macro.Variable('maTie').Find('stTieToon').Value() or ''))
      			ImGui.TableNextColumn()
              ImGui.TextColored(0.39, 0.58, 0.92, 1, 'env')
      			ImGui.TableNextColumn()
      			  ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Macro.Variable('maEnv').Find('stEnvRadius').Value() or ''))

          -- row 2
      		ImGui.TableNextRow()	
        		ImGui.TableNextColumn()
              ImGui.TextColored(0.39, 0.58, 0.92, 1, 'yx')
              if ImGui.IsItemHovered() and ImGui.IsMouseReleased(ImGuiMouseButton.Left) then
                print(string.format('\awloc YXZ:\ax \ag%.2f %.2f %.2f\ax', mq.TLO.Me.Y(), mq.TLO.Me.X(), mq.TLO.Me.Z()))
                print(string.format('\awzone shortname:\ax \ag%s\ax', mq.TLO.Zone.ShortName()))
              end 
    	  		ImGui.TableNextColumn()
              if mq.TLO.Me.Y() then
                ImGui.TextColored(1, 1, 1, 1, string.format('%.0f, %.0f', mq.TLO.Me.Y(), mq.TLO.Me.X()))
             end
    	  		ImGui.TableNextColumn()
    	  		ImGui.TableNextColumn()
    	  		ImGui.TableNextColumn()
              if mq.TLO.Macro.Variable('maPull').Find('swPull').Value() == 'TRUE' then
                ImGui.TextColored(0, 1, 0, 1, 'pull')
              else 
                ImGui.TextColored(1, 0, 0, 1, 'pull')
              end
              if ImGui.IsItemHovered() and ImGui.IsMouseReleased(ImGuiMouseButton.Left) then
                mq.cmd.pull('active')
              end 
    	  		ImGui.TableNextColumn()
      			  ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Macro.Variable('maPull').Find('stPullRadius').Value() or ''))

      		ImGui.Columns()
          ImGui.EndTable()
        end

        util.hud.home_tab_target_info(false)
        
        ImGui.EndTabItem()
      end

-- buff tab 
      if mq.TLO.Macro.Variable('maHud').Find('swTabBuff').Value() == "TRUE" then
        if ImGui.BeginTabItem('Buff') then
        ImGui.Columns(4, 'noname', false)
          edit_switch_perm('aura', 'maBuff', 'swBuffAura')
          edit_switch_perm('self', 'maBuff', 'swBuffSelf')
          edit_switch_perm('crew', 'maBuff', 'swBuffCrew')
        ImGui.NextColumn()
          edit_switch_perm('unity', 'maBuff', 'swBuffUnity')
          edit_switch_perm('raid', 'maBuff', 'swBuffRaid')
          edit_switch_perm('group', 'maBuff', 'swBuffGroup')
          ImGui.NextColumn()
          edit_switch_perm('shrink', 'maBuff', 'swBuffShrink')
          edit_switch_perm('nolobby', 'maBuff', 'swBuffNoLobby')
        ImGui.NextColumn()
          edit_switch_temp('master', 'maBuff', 'swBuffMaster')
          edit_switch_perm('now', 'maBuff', 'swBuffNow')
          edit_switch_perm('temp', 'maBuff', 'swBuffTemp')
        ImGui.Columns()    
        ImGui.EndTabItem()
        end
      end

-- heal tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabHeal').Value() == "TRUE" then
        if ImGui.BeginTabItem('Heal') then
          ImGui.Columns(2, 'noname', false)
            edit_switch_perm('self', 'maHeal', 'swHealSelf')
            ImGui.SameLine()
            edit_switch_perm('pet', 'maHeal', 'swHealPet')
            edit_switch_perm('dannet', 'maHeal', 'swHealDanNet')
            ImGui.SameLine()
            edit_switch_perm('group', 'maHeal', 'swHealGroup')
            edit_switch_perm_cmd('xt', 'maHeal', 'swHealXTarget', 'heal xt build')


          ImGui.NextColumn()
            edit_switch_perm('weight', 'maHeal', 'swHealWeighted')
            ImGui.SameLine()
            edit_switch_perm('break', 'maHeal', 'swBreakHealPCT')
            if class.wis then
              edit_switch_perm('twinheal', 'maHeal', 'swTwinHeal')     
            end
     
            edit_text_perm('adj', 'maHeal', 'stHealAdjust')
          ImGui.Columns()  
          ImGui.EndTabItem()
        end
      end

-- combat tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabCombat').Value() == "TRUE" then
        if ImGui.BeginTabItem('Combat') then
          ImGui.Columns(3, 'firstc', false)
            edit_switch_perm('dot', 'maCC', 'swCombatDoT')
            edit_switch_perm('heal', 'maCC', 'swCombatHeal')
          ImGui.NextColumn()
            edit_switch_perm('melee', 'maCC', 'swCombatMelee')
            edit_switch_perm('range', 'maCC', 'swCombatRange')
          ImGui.NextColumn()
            edit_switch_perm('nuke', 'maCC', 'swCombatNuke')
            if mq.TLO.Me.Class.ShortName() == 'ENC' or mq.TLO.Me.Class.ShortName() == 'BRD' or mq.TLO.Me.Class.ShortName() == 'NEC' or mq.TLO.Me.Class.ShortName() == 'MAG' then
              edit_switch_perm('cc', 'maCC', 'swCombatControl')
            end   
          ImGui.Columns()
            
          ImGui.Columns(2, 'secondc', false)
            local current_smartass = mq.TLO.Macro.Variable('maCC').Find('stAssistMode').Value()
            if ImGui.BeginCombo("smart", current_smartass) then
              for _, t in ipairs({ 'off', 'g', '1', '2', '3', 'm1', 'm2', 'm3' }) do
                local selectedshade = t == current_smartass
                if ImGui.Selectable(t, selectedshade) and not selectedshade then
                  mq.cmd.cc('ass smart', t)
                end
              end
              ImGui.EndCombo()
            end
            
          ImGui.NextColumn()
            edit_text_perm('engage', 'maCC', 'stPctEngage')
          ImGui.Columns()
          ImGui.EndTabItem()
        end
      end

-- pull tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabPull').Value() == "TRUE" then
        if ImGui.BeginTabItem('Pull') then
          ImGui.Columns(3, 'noname', false)

            edit_switch_perm('pull', 'maPull', 'swPull')
 
            -- pull mode
            local pullmode = mq.TLO.Macro.Variable('maPull').Find('stPullMode').Value()
            if ImGui.BeginCombo("mode", pullmode) then
              for _, v in ipairs({ 'base', 'pet', 'int', 'nav', 'multi', 'watch' }) do
                local selectedpm = v == pullmode
                if ImGui.Selectable(v, selectedpm) and not selectedpm then
                  mq.cmd.luaedit('stPullMode', v)
                end
              end

              ImGui.EndCombo()
            end

            -- pull with
            local pullwith = mq.TLO.Macro.Variable('maPull').Find('stPullWith').Value()
            if ImGui.BeginCombo("with", pullwith) then
              for _, v in ipairs({ 'melee', 'range', 'other' }) do
                local selectedpw = v == pullwith
                if ImGui.Selectable(v, selectedpw) and not selectedpw then
                  mq.cmd.luaedit('stPullWith', v)
                end
              end

              ImGui.EndCombo()
            end
            edit_text_perm('var', 'maPull', 'stPullNavVariance')

          ImGui.NextColumn()
            edit_text_perm('rad', 'maPull', 'stPullRadius')
            edit_text_perm('zrad', 'maPull', 'stPullZRadius')
            edit_text_perm('stop', 'maPull', 'stPullNavStopDistance')
            edit_text_perm('chain', 'maPull', 'stCountChainPull')
          ImGui.NextColumn()
            edit_switch_perm('navlos', 'maPull', 'swPullNavLoS')
            edit_switch_perm('pathlogic', 'maPull', 'swNavPathLogic')
            edit_switch_perm('sethome', 'maPull', 'swPullSetHome')
          ImGui.Columns()
          ImGui.EndTabItem()
                  
        end
      end

-- rez tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabRez').Value() == "TRUE" then
        if ImGui.BeginTabItem('Rez') then

          ImGui.Columns(2, 'noname', false)
            local rezrad = tonumber(mq.TLO.Macro.Variable('maRez').Find('stMaxRezRange').Value())
            rezrad, used = ImGui.DragInt("rad", rezrad, 1, 0, 200);
            if used then
              mq.cmd.luaedit('stMaxRezRange', rezrad)  
            end

            local current_rezpct = mq.TLO.Macro.Variable('maRez').Find('stPctMinRez').Value()
            if ImGui.BeginCombo("pct", current_rezpct) then
              for _, v in ipairs({ '10', '20', '35', '50', '60', '75', '85', '90', '93', '96' }) do
                local selectedrezpct = v == current_rezpct
                if ImGui.Selectable(v, selectedrezpct) and not selectedrezpct then
                  mq.cmd.rez('pct', v)
                end
              end

              ImGui.EndCombo()
            end

            edit_switch_perm('IC', 'maRez', 'swRezIC')
            ImGui.SameLine()
            edit_switch_perm('OOC', 'maRez', 'swRezOOC')
          ImGui.NextColumn()
            edit_switch_perm('dannet', 'maRez', 'swRezDanNet')
            ImGui.SameLine()
            edit_switch_perm('everyone', 'maRez', 'swRezEveryone')
            edit_switch_perm('take', 'maRez', 'swRezTake')
            ImGui.SameLine()
            edit_switch_perm('take call', 'maRez', 'swRezTakeCall')
          ImGui.Columns()      
          ImGui.EndTabItem()
        end      
      end

-- tie tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabTie').Value() == "TRUE" then
        if ImGui.BeginTabItem('Tie') then
          ImGui.Columns(2, 'noname', false)
            edit_text_perm('toon', 'maTie', 'stTieToon')
            edit_text_perm('variance', 'maTie', 'stTieVariance')
            local tiemode = mq.TLO.Macro.Variable('maTie').Find('stTieMode').Value()
            if ImGui.BeginCombo("mode", tiemode) then
              for _, v in ipairs({ 'nav', 'stick' }) do
                local selectedtiemode = v == tiemode
                if ImGui.Selectable(v, selectedtiemode) and not selectedtiemode then
                  mq.cmd.tc('mode', v)
                end
              end
              ImGui.EndCombo()
            end
          ImGui.NextColumn()
            edit_switch_perm('incombat', 'maTie', 'swTieCombat')
            edit_switch_perm('break to', 'maTie', 'swTieBreak')
          ImGui.Columns()
          ImGui.EndTabItem()
        end
      end

-- rest tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabRest').Value() == "TRUE" then
        if ImGui.BeginTabItem('Rest') then
          ImGui.Columns(2, 'noname', false)
            edit_text_perm('pct', 'maRest', 'stPctRest')
            edit_text_perm('radius', 'maRest', 'stRestRadius')
            edit_switch_perm('buff', 'maRest', 'swRestBuff')
            edit_switch_perm('full', 'maRest', 'swRestFull')
          ImGui.NextColumn()
            edit_switch_perm('combat', 'maRest', 'swRestCombat')
            edit_switch_perm('health', 'maRest', 'swRestCheckHealth')
            edit_switch_perm('inraid', 'maRest', 'swRestInRaid')
            edit_switch_perm('modrod', 'maRest', 'swRestModRod')
          ImGui.Columns()
          ImGui.EndTabItem()
        end    
      end

-- target tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabTarget').Value() == "TRUE" then
        if ImGui.BeginTabItem('Target') then
   
          -- name
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'DisplayName:')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Target.DisplayName() or ''))        
          
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Name:')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Target.Name() or ''))        
            
          ImGui.NewLine()

          ImGui.Columns(2, 'tarbase', false)

            -- ID
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'ID:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Target.ID() or ''))        

            -- body
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Body:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Target.Body() or ''))        

            -- slowed
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Slowed:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, isSlowed()) 

            -- tashed
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Tashed:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, isTashed()) 

            -- maloed
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Malo:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, isMaloed()) 


          ImGui.NextColumn()

            -- height
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Height:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, string.format('%.2f', mq.TLO.Target.Height() or 0))

            -- crippled
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Cripple:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, isCrippled()) 

            -- snared
            ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Snared:')
            ImGui.SameLine()
            ImGui.TextColored(1, 1, 1, 1, isSnared()) 

          ImGui.Columns()
          ImGui.EndTabItem()
        end    
      end  

-- raids tab
      util.hud.tab_raid(false)

    ImGui.EndTabBar()
    end  
    
-- buttons at the bottom
    util.hud.buttons_bottom(false)

  end
  ImGui.End()
end

mq.imgui.init('hudwindow', imguicallback)

while openGUI do 
  mq.delay(1000)
end







 



