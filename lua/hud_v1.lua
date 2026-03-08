--
-- entropoy.mac
-- hud.lua
-- 
-- hud and things
--

local mq = require 'mq'
require 'common'
require 'eb_tab_event'


local openGUI = true
local shouldDrawHUD = true
local name = mq.TLO.Me.Name()
local classID = mq.TLO.Me.Class.ID()



local function imguicallback()
  openGUI, shouldDrawHUD = ImGui.Begin(util.hud.headder() .. '###EntropyHUD'..classID..name, openGUI)
  
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
      			  ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('maData').Find('mode').Value())
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
              ImGui.TextColored(0.39, 0.58, 0.92, 1, 'yxz')
              if ImGui.IsItemHovered() and ImGui.IsMouseReleased(ImGuiMouseButton.Left) then
                print('-------')
                print(string.format('\awloc YXZ:\ax \ag%.2f %.2f %.2f\ax', mq.TLO.Me.Y(), mq.TLO.Me.X(), mq.TLO.Me.Z()))
                print(string.format('\awzone shortname:\ax \ag%s\ax', mq.TLO.Zone.ShortName()))
                mq.cmd('/echo')
              end               
    	  		ImGui.TableNextColumn()
              if mq.TLO.Me.Y() then
                ImGui.TextColored(1, 1, 1, 1, string.format('%.1f, %.1f', mq.TLO.Me.Y(), mq.TLO.Me.X()))
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
              ImGui.SameLine()
    		
      		-- row 3


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
          edit.switchbox('aura', 'maBuff', 'swBuffAura', tip.swBuffAura, 'cb a')
          edit.switchbox('self', 'maBuff', 'swBuffSelf', tip.swBuffSelf, 'cb s')
          edit.switchbox('crew', 'maBuff', 'swBuffCrew', tip.swBuffCrew, 'cb c')
        ImGui.NextColumn()
          edit.switchbox('minion', 'maMinion', 'swPetBuff', tip.swPetBuff, 'cb m')
          edit.switchbox('group', 'maBuff', 'swBuffGroup', tip.swBuffGroup, 'cb g')
          edit.switchbox('temp', 'maBuff', 'swBuffTemp', tip.swBuffTemp, 'cb t')
        ImGui.NextColumn()
          edit.switchbox('shrink', 'maBuff', 'swBuffShrink', tip.swBuffShrink)
          edit.switchbox('nolobby', 'maBuff', 'swBuffNoLobby', tip.swBuffNoLobby)
        ImGui.NextColumn()
          edit.switchbox('now', 'maBuff', 'swBuffNow', tip.swBuffNow)
          edit.switchbox('ammo', 'maBuff', 'swBuffAmmo', tip.swBuffAmmo)
          edit.switchbox('beg', 'maBuff', 'swBuffBeg', tip.swBuffBeg)
        ImGui.Columns()    
        ImGui.EndTabItem()
        end
      end

-- heal tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabHeal').Value() == "TRUE" then
        if ImGui.BeginTabItem('Heal') then
          
          ImGui.Columns(4, 'healnono', false)
            edit.switchbox('self', 'maHeal', 'swHealSelf', tip.swHealSelf)
            edit.switchbox('group', 'maHeal', 'swHealGroup', tip.swHealGroup)
          ImGui.NextColumn()
            edit.switchbox('pet', 'maHeal', 'swHealPet', tip.swHealPet)
            edit.switchbox('dannet', 'maHeal', 'swHealDanNet', tip.swHealDanNet)
          ImGui.NextColumn()
            edit.switchbox('break', 'maHeal', 'swBreakHealPCT', tip.swBreakHealPCT)
            edit.switchbox('weight', 'maHeal', 'swHealWeighted', tip.swHealWeighted)
          ImGui.NextColumn()
            if class[mq.TLO.Me.Class.ShortName()].splash then
              edit.switchbox('splashme', 'maHeal', 'swSplashMeOnly', tip.swSplashMeOnly)
            end  
            if class[mq.TLO.Me.Class.ShortName()].twinheal then
              edit.switchbox('twinheal', 'maHeal', 'swTwinHeal', nil)     
            end
          ImGui.Columns()
          ImGui.Columns(2, 'noname', false)
            edit.linetext('adjust', 'maHeal', 'stHealAdjust', tip.stHealAdjust, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
            edit.switchbox('xt', 'maHeal', 'swHealXTarget', tip.swHealXTarget, 'heal xt build')
           ImGui.Columns()  
          ImGui.EndTabItem()
        end
      end

-- combat tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabCombat').Value() == "TRUE" then
        if ImGui.BeginTabItem('Combat') then
          ImGui.Columns(4, 'firstc', false)
            edit.switchbox('dot', 'maCC', 'swCombatDoT', tip.swCombatDoT)
            edit.switchbox('heal', 'maCC', 'swCombatHeal', tip.swCombatHeal)
          ImGui.NextColumn()
            edit.switchbox('melee', 'maCC', 'swCombatMelee', tip.swCombatMelee)
            edit.switchbox('range', 'maCC', 'swCombatRange', tip.swCombatRange)
          ImGui.NextColumn()
            edit.switchbox('nuke', 'maCC', 'swCombatNuke', tip.swCombatNuke)
            if class[mq.TLO.Me.Class.ShortName()].crowdcontrol then
              edit.switchbox('cc', 'maCC', 'swCombatControl', tip.swCombatControl)
            end
          ImGui.NextColumn()
            edit.switchbox('manual', 'maCC', 'swManualAssist', tip.swManualAssist)
          ImGui.Columns()
          ImGui.Columns(2, 'secondc', false)
            edit.selectlist('assist', 'maCC', 'stAssistMode', { 'off', 'g', '1', '2', '3', 'm1', 'm2', 'm3' }, tip.stAssistMode)  
          ImGui.NextColumn()
            edit.linetext('engage', 'maCC', 'stPctEngage', tip.stPctEngage, {sb=false, rb=false, list=false})
          ImGui.Columns()
          ImGui.EndTabItem()
        end
      end

-- pull tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabPull').Value() == "TRUE" then
        if ImGui.BeginTabItem('Pull') then
          ImGui.Columns(3, 'noname', false)
            edit.switchbox('active', 'maPull', 'swPull', tip.swPull)
            edit.selectlist('mode', 'maPull', 'stPullMode', { 'base', 'pet', 'int', 'nav', 'multi', 'watch' }, tip.stPullMode)
            edit.selectlist('with', 'maPull', 'stPullWith', { 'melee', 'range', 'other' }, tip.stPullWith)
          ImGui.NextColumn()
            edit.linetext('rad', 'maPull', 'stPullRadius', tip.stPullRadius, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
            edit.switchbox('navlos', 'maPull', 'swPullNavLoS', tip.swPullNavLoS)
            edit.switchbox('pathlogic', 'maPull', 'swNavPathLogic', tip.swNavPathLogic)
            edit.switchbox('sethome', 'maPull', 'swPullSetHome', tip.swPullSetHome)
          ImGui.Columns()
          ImGui.EndTabItem()
        end
      end

-- rez tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabRez').Value() == "TRUE" then
        if ImGui.BeginTabItem('Rez') then

          ImGui.Columns(3, 'noname', false)
          
            edit.dragtext ('rad', 'maRez', 'stMaxRezRange', 1, 200, tip.stMaxRezRange)
            edit.selectlist('pct', 'maRez', 'stPctMinRez', { '10', '20', '35', '50', '60', '75', '85', '90', '93', '96' }, tip.stPctMinRez)
            edit.switchbox('IC', 'maRez', 'swRezIC', tip.swRezIC)
            ImGui.SameLine()
            edit.switchbox('OOC', 'maRez', 'swRezOOC', tip.swRezOOC)
          ImGui.NextColumn()
            edit.switchbox('dannet', 'maRez', 'swRezDanNet', tip.swRezDanNet)
            edit.switchbox('everyone', 'maRez', 'swRezEveryone', tip.swRezEveryone)
            edit.switchbox('use token', 'maRez', 'swRezToken', tip.swRezToken)
          ImGui.NextColumn()
            edit.switchbox('auto', 'maRez', 'swRezTake', tip.swRezTake)
            edit.switchbox('call', 'maRez', 'swRezTakeCall', tip.swRezTakeCall)
          ImGui.Columns()      
          ImGui.EndTabItem()
        end      
      end

-- tie tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabTie').Value() == "TRUE" then
        if ImGui.BeginTabItem('Tie') then
          ImGui.Columns(2, 'noname', false)
            edit.linetext('toon', 'maTie', 'stTieToon', tip.stTieToon, {sb=false, rb=false, list=false})
            edit.linetext('variance', 'maTie', 'stTieVariance', tip.stTieVariance, {sb=false, rb=false, list=false})
            edit.selectlist('mode', 'maTie', 'stTieMode', { 'nav', 'stick' }, tip.stTieMode)
          ImGui.NextColumn()
            edit.switchbox('incombat', 'maTie', 'swTieCombat', tip.swTieCombat)
            edit.switchbox('break to', 'maTie', 'swTieBreak', tip.swTieBreak)
          ImGui.Columns()
          ImGui.EndTabItem()
        end
      end

-- rest tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabRest').Value() == "TRUE" then
        if ImGui.BeginTabItem('Rest') then
          ImGui.Columns(3, 'noname', false)
            edit.switchbox('buff', 'maRest', 'swRestBuff', tip.swRestBuff)
            edit.switchbox('full', 'maRest', 'swRestFull', tip.swRestFull)
          ImGui.NextColumn()
            edit.switchbox('combat', 'maRest', 'swRestCombat', tip.swRestCombat)
            edit.switchbox('inraid', 'maRest', 'swRestInRaid', tip.swRestInRaid)
          ImGui.NextColumn()
            edit.switchbox('modrod', 'maRest', 'swRestModRod', tip.swRestModRod)
            edit.switchbox('health', 'maRest', 'swRestCheckHealth', tip.swRestCheckHealth)
          ImGui.Columns()

          ImGui.Columns(2, 'noname', false)
            edit.linetext('pct', 'maRest', 'stPctRest', tip.stPctRest, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
            edit.linetext('radius', 'maRest', 'stRestRadius', tip.stRestRadius, {sb=false, rb=false, list=false})
          ImGui.Columns()


          ImGui.EndTabItem()
        end
      end

-- raids tab
      if mq.TLO.Macro.Variable('maHud').Find('swTabRaids').Value() == "TRUE" then
        util.hud.tab_raid(false)
      end

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







 



