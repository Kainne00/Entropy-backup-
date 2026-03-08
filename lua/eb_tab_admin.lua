--
-- entropoy.mac
-- eb_tab_admin.lua
-- 
-- admin tab for builder
--

local mq = require 'mq' 
require 'common'

admin = {}

  admin.build = {

  -- autostart
    autostart = function ()
      if ImGui.CollapsingHeader('autostart') then
        indent(1,1) 
        ImGui.NewLine()  
        edit.switchbox('HUD', 'maEntropy', 'swHUDAuto', tip.swHUDAuto)
        edit.switchbox('Drive', 'maEntropy', 'swHUDDriveAuto', tip.swHUDDriveAuto)
        edit.switchbox('Event Buttons', 'maHud', 'swHUDEventButtonsAuto', tip.swHUDEventButtonsAuto)
        edit.switchbox('Radar', 'maHud', 'stRadarAuto', tip.stRadarAuto)
        ImGui.NewLine()  
        indent(1,2)
      end
    end,
    
    -- HUD
    hud = function (...)
      local op = {...}
      if ImGui.CollapsingHeader('hud') then
        indent(1,1)
        ImGui.NewLine()
        edit.switchbox('show buttons on hud', 'maHud', 'swHUDbuttons', tip.swHUDbuttons)
        edit.switchbox('Main Target: On for display name, OFF for real name', 'maHud', 'swHUDDisplayName', tip.swHUDDisplayName)
        edit.switchbox('blank', 'maHud', 'stHUDBlank', tip.stHUDBlank)
        
        -- hud version
        local current_hudversion = mq.TLO.Macro.Variable('maHud').Find('stHUDVersion').Value()
        if ImGui.BeginCombo('version', current_hudversion) then
          for _, t in ipairs({ '1', '2' }) do
            local selectedhudv = t == current_hudversion
            if ImGui.Selectable(t, selectedhudv) and not selectedhudv then
              mq.cmd.luaedit('stHUDVersion', t)
            end
          end
        ImGui.EndCombo()
        end
                   
        ImGui.NewLine()
        indent(1,2)

        if ImGui.TreeNode('tabs') then
          indent(1,1) 
          ImGui.Columns(3, 'hud', false)
            edit.switchbox('buff', 'maHud', 'swTabBuff', tip.swTabBuff)
            edit.switchbox('heal', 'maHud', 'swTabHeal', tip.swTabHeal)
            edit.switchbox('combat', 'maHud', 'swTabCombat', tip.swTabCombat)
            edit.switchbox('pull', 'maHud', 'swTabPull', tip.swTabPull)
            edit.switchbox('raids', 'maHud', 'swTabRaids', tip.swTabRaids)
          ImGui.NextColumn()
            edit.switchbox('rez', 'maHud', 'swTabRez', tip.swTabRez)
            edit.switchbox('tie', 'maHud', 'swTabTie', tip.swTabTie)
            edit.switchbox('rest', 'maHud', 'swTabRest', tip.swTabRest)
            -- edit.switchbox('target', 'maHud', 'swTabTarget', tip.swTabTarget)
          ImGui.NextColumn()
          ImGui.Columns()  
          ImGui.NewLine()  
          indent(1,2)
        ImGui.TreePop() 
        end

        if ImGui.TreeNode('buttons') then
          ImGui.Text('* no more than 12 is suggested')
          indent(1,1) 
          ImGui.Columns(3, 'hudbuttons', false)
            edit.switchbox('all auto', 'maHud', 'swHUDBTNallauto', tip.swHUDBTNallauto)
            edit.switchbox('all manual', 'maHud', 'swHUDBTNallmanual', tip.swHUDBTNallmanual)
            edit.switchbox('auto', 'maHud', 'swHUDBTNauto', tip.swHUDBTNauto)
            edit.switchbox('tie switch', 'maHud', 'swHUDBTNtie', tip.swHUDBTNtie)
            edit.switchbox('tie nav', 'maHud', 'swHUDBTNtienav', tip.swHUDBTNtienav)
            edit.switchbox('tie stick', 'maHud', 'swHUDBTNtiestick', tip.swHUDBTNtiestick)
          ImGui.NextColumn()
            edit.switchbox('incharge', 'maHud', 'swHUDBTNincharge', tip.swHUDBTNincharge)
            edit.switchbox('stack invis', 'maHud', 'swHUDBTNinvis', tip.swHUDBTNinvis)
            edit.switchbox('no invis', 'maHud', 'swHUDBTNnoinvis', tip.swHUDBTNnoinvis)
            edit.switchbox('int pull', 'maHud', 'swHUDBTNintpull', tip.swHUDBTNintpull)
            edit.switchbox('gather', 'maHud', 'swHUDBTNgather', tip.swHUDBTNgather)
            edit.switchbox('here', 'maHud', 'swHUDBTNhere', tip.swHUDBTNhere)
          ImGui.NextColumn()
            edit.switchbox('ui: radar', 'maHud', 'swHUDBTNradar', tip.swHUDBTNradar)
            edit.switchbox('ui: drive', 'maHud', 'swHUDBTNdrive', tip.swHUDBTNdrive)
            edit.switchbox('ui: event buttons', 'maHud', 'swHUDBTNevent', tip.swHUDBTNevent)
            edit.switchbox('ui: notes', 'maHud', 'swHUDBTNnotes', tip.swHUDBTNnotes)
            edit.switchbox('ui: movement', 'maHud', 'swHUDBTNmovement', tip.swHUDBTNmovement)
          ImGui.Columns()  
          ImGui.NewLine()  
          indent(1,2)
        ImGui.TreePop() 
        end


        if ImGui.TreeNode('headder') then
          indent(1,1) 
          ImGui.Columns(3, 'hud', false)
            edit.switchbox('Entropy', 'maHud', 'swTitleEnt', tip.swTitleEnt)
            edit.switchbox(ent['build'], 'maHud', 'swTitleBuild', tip.swTitleBuild)
            edit.switchbox('Name', 'maHud', 'swTitleName', tip.swTitleName)
            edit.switchbox('Auto / Manual', 'maHud', 'swTitleAM', tip.swTitleAM)
          ImGui.NextColumn()
            edit.switchbox('INV', 'maHud', 'swTitleIV', tip.swTitleIV)
            edit.switchbox('IVU', 'maHud', 'swTitleIVU', tip.swTitleIVU)
            edit.switchbox('Adj', 'maHud', 'swTitleHealAdj', tip.swTitleHealAdj)
          ImGui.NextColumn()
          ImGui.Columns()  
        indent(1,2)
        ImGui.TreePop() 
        end
      ImGui.NewLine()
      end
    end,
    
    -- drive
    drive = function (...)
      local op = {...}
      if ImGui.CollapsingHeader('drive') then
        indent(1,1) 
        ImGui.NewLine()  
        edit_switch_perm('Auto start drive on mac start', 'maEntropy', 'swHUDDriveAuto')
        -- edit_switch_perm('close drive hud macro end', 'maEntropy', 'swHUDDriveCloseonEnd')
        edit_switch_perm('show buttons on drive', 'maHud', 'swHUDDrivebuttons')

        ImGui.NewLine()
        indent(1,2)
      end
    end,
    
    -- notes
    notes = function (...)
      local op = {...}
      if ImGui.CollapsingHeader('notes') then
        indent(1,1) 
        ImGui.NewLine()  

        ImGui.NewLine()
        indent(1,2)
      end
    end,

    -- radar
    radar = function (...)
      local op = {...}
      if ImGui.CollapsingHeader('radar') then
        indent(1,1) 
        ImGui.NewLine()  
        
          -- type of radar to view
          local current_view = mq.TLO.Macro.Variable('maHud').Find('stRadarViewType').Value()
          if ImGui.BeginCombo("view", current_view) then
            for _, t in ipairs({ 'spawn', 'xtarget' }) do
              local selected_view = t == current_view
              if ImGui.Selectable(t, selected_view) and not selected_view then
                mq.cmd.luaedit('stRadarViewType', '"'..t..'"')
              end
            end
            ImGui.EndCombo()
          end

          
          -- spawn count       
          if mq.TLO.Macro.Variable('maHud').Find('stRadarViewType').Value() == 'spawn' then
            ImGui.NewLine()  
            local current_sorttype = mq.TLO.Macro.Variable('maHud').Find('stRadarSortType').Value()
            if ImGui.BeginCombo("sort", current_sorttype) then
              for _, t in ipairs({ 'npc', 'pc' }) do
                local selectedshade = t == current_sorttype
                if ImGui.Selectable(t, selectedshade) and not selectedshade then
                  mq.cmd.luaedit('stRadarSortType', '"'..t..'"')
                end
              end
              ImGui.EndCombo()
            end
          
            local radarcount = tonumber(mq.TLO.Macro.Variable('maHud').Find('stRadarCount').Value())
            radarcount, used = ImGui.DragInt("spawncount##radarcount", radarcount, 1, 0, 1000);
            if used then
              mq.cmd.luaedit('stRadarCount', radarcount)  
            end

            edit_switch_perm('targetable?', 'maHud', 'swRadarSortTargetable')      
          end     

        ImGui.NewLine()
        edit_switch_perm('pet button', 'maHud', 'swRadarshowPetbutton')      
        edit_switch_perm('mark buttons', 'maHud', 'swRadarshowMarkbutton')
        ImGui.NewLine()
        indent(1,2)
      end
    end,

    -- build
    build = function (...)
      local op = {...}
      if ImGui.CollapsingHeader('build') then
        indent(1,1) 
        ImGui.NewLine()  

        ImGui.NewLine()
        indent(1,2)
      end
    end,
 
    -- hard
    hard = function (...)
      local op = {...}
      if ImGui.CollapsingHeader('maHard') then
        indent(1,1) 
        ImGui.NewLine()  
        ImGui.Text('My advice is to touch nothing in here.')
        ImGui.Text('Use at your own risk.')
        
        
        ImGui.NewLine() 
        edit_text_perm('max melee variance', 'maHard', 'stMaxMeleeAdj', tip.stMaxMeleeAdj)
        edit_text_perm('ground grab range', 'maHard', 'stRadGrab', tip.stRadGrab)
        edit_text_perm('max pet range', 'maHard', 'stMaxRadPet', tip.stMaxRadPet)
        edit_text_perm('min dist to bow/throw', 'maHard', 'stMinBowDist', tip.stMinBowDist)
        edit_text_perm('max dist to bow/throw', 'maHard', 'stMaxBowDist', tip.stMaxBowDist)
        edit_text_perm('min dist to move for bow', 'maHard', 'stMinMovetoBow', tip.stMinMovetoBow)
        edit_text_perm('rez time lock for good cast', 'maHard', 'stRezSuccess', tip.stRezSuccess)
        edit_text_perm('rez time lock for bad cast', 'maHard', 'stRezFail', tip.stRezFail)
        edit_text_perm('token time lock bad cast', 'maHard', 'stRezFailToken', tip.stRezFailToken)
        edit_text_perm('/corpse max range', 'maHard', 'stRezSummonRange', tip.stRezSummonRange)
        edit_text_perm('rex lock for fucktards', 'maHard', 'stRezIgnoreFucktards', tip.stRezIgnoreFucktards)
        edit_text_perm('max cure range', 'maHard', 'stMaxCureRad', tip.stMaxCureRad)
        edit_text_perm('pul tag tries', 'maHard', 'stPullMobTagTry', tip.stPullMobTagTry)
        edit_text_perm('bard swap instr time', 'maHard', 'stBardSwapRemain', tip.stBardSwapRemain)
        edit_text_perm('spell book pages', 'maHard', 'stSpellBookSize', tip.stSpellBookSize)
        edit_text_perm('hunger maintain level', 'maHard', 'stFoodMaintain', tip.stFoodMaintain)
        edit_text_perm('thirst maintain level', 'maHard', 'stDrinkMaintain', tip.stDrinkMaintain)
        edit_text_perm('/drag swap target', 'maHard', 'stModeDragTargetCheck', tip.stModeDragTargetCheck)
        edit_text_perm('buff spa to check', 'maHard', 'stMaxSPARemoveCount', tip.stMaxSPARemoveCount)
        edit_text_perm('script propagation delay', 'maHard', 'stDelayLua', tip.stDelayLua)
        ImGui.NewLine()
        indent(1,2)
      end
    end  
 
 
  }






 



