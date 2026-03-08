--
-- entropoy.mac
-- ent.lua
-- 
-- Entropy Builder
--


local mq = require 'mq'
require 'common'
require 'eb_tab_control'
require 'eb_tab_event'
require 'eb_tab_home'
require 'eb_tab_admin'
require 'eb_tab_debug'
require 'eb_tab_about'
require 'list_tooltip'

local openGUI = true
local shouldDrawHUD = true
local name = mq.TLO.Me.DisplayName()
local classID = mq.TLO.Me.Class.ID()



local notecount = tonumber(mq.TLO.Macro.Variable('notescount')())
local multitext = {}
for i = 1, notecount do  
  multitext[i] = mq.TLO.Macro.Variable('note'..i..'text')()
end
      


local function imguicallback()
  
  openGUI, shouldDrawHUD = ImGui.Begin('Entropy Builder###EntropyEditor'..classID..name, openGUI)
  
  if shouldDrawHUD and (util.env.build() == nil or mq.TLO.EverQuest.GameState() ~= 'INGAME') then

  elseif shouldDrawHUD then  
    
    -- ImGui.Separator()    
    
    if ImGui.BeginTabBar('##buildtabs') then

      if ImGui.BeginTabItem('home') then
        -- home.build.ebhome(false)
        ImGui.EndTabItem()
      end 

      if ImGui.BeginTabItem('control') then
        control.build.agro(false)
        control.build.buff(false)
        control.build.burn(false)
        control.build.cc(false)
        control.build.chr(false)
        control.build.clickitem(false)
        control.build.crew(false)
        control.build.cure(false)
        control.build.cursor(false)
        control.build.dot(false)
        control.build.debuff(false)
        control.build.defense(false)
        control.build.entropy(false)
        control.build.env(false)
        control.build.heal(false)
        control.build.home(false)
        control.build.mode(false)
        control.build.minion(false)
        control.build.miscdps(false)
        control.build.melee(false)
        control.build.nuke(false)
        control.build.override(false)
        control.build.pred(false)
        control.build.pull(false)
        control.build.rest(false)
        control.build.rez(false)
        control.build.sash(false)
        control.build.song(false)
        control.build.tc(false)
        control.build.ttl(false)
        control.build.watch(false)
        ImGui.EndTabItem()        
      end

      if ImGui.BeginTabItem('event') then
        event.build.event_tob(false)
        event.build.event_ls(false)
        event.build.event_nos(false)
        event.build.event_tol(false)
        event.build.event_cov(false)
        event.build.event_tov(false)
        event.build.event_tbl(false)
        event.build.event_ros(false)
        event.build.event_eok(false)
        event.build.event_tbm(false)
        event.build.event_tds(false)
        event.build.event_cotf(false)
        event.build.event_rof(false)
        event.build.event_voa(false)
        event.build.event_hot(false)
        event.build.event_uf(false)
        event.build.event_sod(false)
        event.build.event_sof(false)
        event.build.event_tbs(false)
        event.build.event_ss(false)
        event.build.event_por(false)
        event.build.event_dod(false)
        event.build.event_don(false)
        event.build.event_oow(false)
        event.build.event_god(false)
        event.build.event_ldon(false)
        event.build.event_loy(false)
        event.build.event_pop(false)
        event.build.event_sol(false)
        event.build.event_sov(false)
        event.build.event_rok(false)
        event.build.event_anni(false)
        ImGui.EndTabItem()
      end 

      if ImGui.BeginTabItem('note') then


        local addathing = ImGui.Button('+ Note', 60, 22)
        if addathing then
          mq.cmd('/notes add')
          -- print(notecount)
          notecount = notecount + 1
          -- print(notecount)
          --for i = 1, notecount do
          --  multitext[i] = mq.TLO.Macro.Variable('note'..i..'text')()
          --end    
        end

        ImGui.NewLine()

        if notecount > 0 then 
            
            for i = 1, notecount-1 do 
              if ImGui.TreeNode(mq.TLO.Macro.Variable('note'..i..'name')()) then 
                
                ImGui.NewLine()
                
                
                -- edit title
                local line, selected = ImGui.InputTextWithHint('##notes'..i..'name', mq.TLO.Macro.Variable('note'..i..'name')(), '', ImGuiInputTextFlags.EnterReturnsTrue)
                if selected then
                  mq.cmd.notes(i, 'title', '"'..line..'"')
                end  
                ImGui.NewLine()
                
                
                -- update note body
                multitext[i], selected = ImGui.InputTextMultiline('##Label'..i, multitext[i], 800, 400)
                local noteupdate = ImGui.SmallButton('Update')
                if noteupdate then
                  mq.cmd.notes(i, '"'..multitext[i]..'"')
                end
              
              
                ImGui.NewLine()
                
                
              ImGui.TreePop()
              end
            end
          end
        -- end
      ImGui.EndTabItem()
      end 
 
      if ImGui.BeginTabItem('admin') then      
        admin.build.autostart(false)
        admin.build.hud(false)
        admin.build.drive(false)
        admin.build.notes(false)
        admin.build.radar(false)
        admin.build.build(false)
        admin.build.hard(false)
        ImGui.EndTabItem(false)
      end

      if ImGui.BeginTabItem('debug') then
        ebdebug.build.basedebug(false)
        ebdebug.build.castdata(false)
        ebdebug.build.hurtdata(false)
        ebdebug.build.targetdata(false)
        ebdebug.build.assistdata(false)
        ebdebug.build.currenttargetdata(false)
        ebdebug.build.localspawns(false)
 
        ImGui.EndTabItem()
      end        

      if ImGui.BeginTabItem('about') then
        about.build.about(false)
        ImGui.EndTabItem()
        
      end 


    ImGui.EndTabBar()
    end
  end
  ImGui.End()

end

mq.imgui.init('editorwindow', imguicallback)

while openGUI do 
  updateHealPoints()
  mq.delay(1000) 
end







 



