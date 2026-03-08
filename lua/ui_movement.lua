--
-- entropy.mac
-- 
-- 
-- "i am sooooo lost.."
--


local mq = require('mq')
require 'common'
require 'data_zones'
local openGUI = true
local shouldDrawHUD = true
local name = mq.TLO.Me.Name()
local classID = mq.TLO.Me.Class.ID()



local navlog = zone['options']['nav']['log']
local navdistance = zone['options']['nav']['distance']
local buttony = 200
local buttonx = 20



--[[
-- move and click guild placed clickports
local function clickport_button (name, cmd, desc)
  local cpb = ImGui.Button(desc, buttony, buttonx)
  if cpb then
    mq.cmd('/move '..cmd.." "..name)
    
    mq.cmd.Ground.Search(name)
    
    mq.cmd.nav(item)
    
    /invoke ${Ground.Search[${sqlite.Result[dummy 1 name1]}]}
    /declare _item ground local

    /invoke ${Ground.Search[${_item.ID}]}
    /nav item |dist=15 log=${maEntropy.Find[swNavLogSpew].Value}
    /delay 1s

    /while (${Me.Moving}) {
      DEBUG ${sep}whileloop${sep}\a-wMe.Moving\ax
      /if (${_item.Distance3D} <= 15 || !${Navigation.Active} || !${Me.Moving}) {
        DEBUG ${sep}distance${sep}\a-w${_item.Distance3D}\ax
        /nav stop |log=${maEntropy.Find[swNavLogSpew].Value}
        /break
      }
      /delay 2
    }    
        
  end
  tooltip(false, name)
end

--]]


-- check if keys exist
local function data_zones_contains(x)
  local found = false
  if zone[mq.TLO.Zone.ShortName()] then
    for key, value in pairs(zone[mq.TLO.Zone.ShortName()]) do
      if key == x then
        found = true
      end
    end
  end
  return found
end


local function imguicallback()
  openGUI, shouldDrawHUD = ImGui.Begin(echo.icon.movement .. ' movement###EntropyZoneMovement'..classID..name, openGUI)
 
  if shouldDrawHUD and (ent.build == '--' or mq.TLO.EverQuest.GameState() ~= 'INGAME') then

  elseif shouldDrawHUD then  

    settableflags()
    local zoneShortName = zone[mq.TLO.Zone.ShortName()]
    

  -- move to zones
    if data_zones_contains('zone') then
      if ImGui.CollapsingHeader('zone') then
        for key, value in pairs(zone[mq.TLO.Zone.ShortName()]['zone']) do
          local zb = ImGui.Button(value.name, buttony, buttonx)
          local portTyoe = nil
          if zb then
            if value.door ~= nil then
              mq.cmdf('/nav door %s |log=%s dist=%d', value.door, navlog, navdistance)
            else
              mq.cmdf('/nav locyxz %s |log=%s dist=%d', value.locyxz, navlog, navdistance)
            end
          end
          if value.tooltip ~= "" then
            tooltip(false, value.tooltip)          
          end
        end           
      end   
    end



 
  -- move to an NPC
    if data_zones_contains('npc') then
      if ImGui.CollapsingHeader('npc') then
        for _, key in ipairs(zoneShortName.npcorder) do
          local npc = zoneShortName.npc[key]
          local spawnID = mq.TLO.Spawn(npc.name).ID()
          local nb = ImGui.Button(npc.name, buttony, buttonx)
          if nb then
            mq.cmdf('/nav id %d |log=%s dist=%d', spawnID, navlog, navdistance)
          end
          if npc.tooltip ~= "" then
            tooltip(false, npc.tooltip)
          end
        end
      end   
    end


  -- tradeskill crap
    if data_zones_contains('tradeskill') then
      if ImGui.CollapsingHeader('tradeskill') then
        for _, key in ipairs(zoneShortName.tradeskillorder) do
          local tscontainer = zoneShortName.tradeskill[key]
          local tsb = ImGui.Button(tscontainer.name, buttony, buttonx)
          if tsb then
            mq.cmdf('/nav locyxz %s |log=%s dist=%d', tscontainer.locyxz, navlog, navdistance)
          end
          if tscontainer.tooltip ~= "" then
            tooltip(false, tscontainer.tooltip)     
          end
        end
      end   
    end  




    
  -- movement to FLOOR in a zone
    if data_zones_contains('floor') then
      if ImGui.CollapsingHeader('floor') then
        for _, key in ipairs(zoneShortName.floororder) do
          local zonefloor = zoneShortName.floor[key]
          local nb = ImGui.Button(zonefloor.name, buttony, buttonx)
          if nb then
            mq.cmdf('/nav locyxz %s |log=%s dist=%d', zonefloor.locyxz, navlog, navdistance)
          end
          if zonefloor.tooltip ~= "" then
            tooltip(false, zonefloor.tooltip)     
          end
        end
      end   
    end  




  -- movement to services offered in a zone
    if data_zones_contains('service') then
      if ImGui.CollapsingHeader('service') then
        for key, value in pairs(zone[mq.TLO.Zone.ShortName()]['service']) do
          local sb = ImGui.Button(value.name, buttony, buttonx)
          if sb then
            mq.cmdf('/nav locyxz %s |log=%s dist=%d', value.locyxz, navlog, navdistance)
          end
          if value.tooltip ~= "" then
            tooltip(false, value.tooltip)     
          end
        end           
      end   
    end 




--[[
    if data_zones_contains('clickport') then
      if ImGui.CollapsingHeader('clickport') then
        for key, value in pairs(zone[mq.TLO.Zone.ShortName()]['clickport']) do
          clickport_button (value["name"], 'clickbutton', value["desc"])
        end           
      end   
    end 
--]]



  end
  ImGui.End()

end

mq.imgui.init('movewindow', imguicallback)

while openGUI do 
  mq.delay(500) 
end







 



