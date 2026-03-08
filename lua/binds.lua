--
-- entropoy.mac
-- binds.lua
-- 
--
--

------------------------------------------------------------
-- 
-- use:
--


local mq = require 'mq'
require 'common'
require 'data_zones'


------------------------------------------------------------
-- displays command options and help
-- use: /gethelp
--
local helpTypes = { 'cls', 'control', 'move', 'admin2'}
local function gethelp ()
  for _key, type in pairs(helpTypes) do
    mq.cmd('/' .. type .. ' help')
  end
end
mq.bind('/gethelp', gethelp)









------------------------------------------------------------
-- administration stuffssss
-- use: /admin []
--
local admin2 = function (...)
  local op = {...}
  
  if op[1] == 'help' then
    out(42, '/admin2', '[members, fixmap]')
    out(42, '..', 'members - (character, target and spawn) list all members')
    out(42, '..', 'fixmap - reloads mq2map plugin to fix map after persona swap')
  end

  if op[1] == 'members' then
    local basicTypes = {'Character', 'Target', 'Spawn'}
    local memberCount = 1

    for _key, type in pairs(basicTypes) do
       local index = 0
       while mq.TLO.Type(type:lower()).Member(index)() do
          local memberName = mq.TLO.Type(type:lower()).Member(index)()
          local memberValue = tostring(mq.TLO.Me[memberName]())
          print(string.format('%d - %s (%s)', memberCount, memberName, memberValue))
          index = index + 1
          memberCount = memberCount + 1
       end
    end
  end
  
  if op[1] == 'fixmap' then
    print('Reloading Map / DanNet')
    mq.cmd('/plugin mq2map unload')
    mq.cmd('/plugin mq2map load')
    mq.cmd('/plugin mq2dannet unload')
    mq.cmd('/plugin mq2dannet load')
  end
  
  if op[1] == 'loc' then
    print('location Y X Z')
    mq.cmd.echo('${Me.Y} ${Me.X} ${Me.Z}')
    mq.cmd.echo('${Zone.ShortName}')
    


  end
  

  
end
mq.bind('/admin2', admin2)



------------------------------------------------------------
-- 
-- use:
--

function control (...)
  local op = {...}
  
  
  if op[1] == 'help' then  
    out(42, '/control', '[stop, auto, sos, lockpicks, force]')
    out(42, '..', 'stop - stop various things. [combat, casting, movement, all]')
    out(42, '..', 'auto - turn macro on auto or off. [toggle, on, off]')
    out(42, '..', 'sos - activate rogue SoS (sneak/hide)')
    out(42, '..', 'lockpicks - puts lockpicks on cursor, or puts them away.')
    out(42, '..', 'force - force combat on the current target.')
  end

  -- stop shit
  if op[1] == 'stop' then

    if op[2] == 'all' then
      control_combat('stop_all')      
      control_movement('stop_all')
      control_casting('stop_all')
      control_target('release')
      --mq.cmd('/env auto off')
      out(3, '/control', op[1], op[2])
      
    -- stop all casting
    elseif op[2] == 'cast' then
      control_casting('stop_all')

    -- stop all movement
    elseif op[2] == 'move' then
      control_movement('stop_all')

    -- stop all combat
    elseif op[2] == 'combat' then
      control_combat('stop_all')

    -- release target
    elseif op[2] == 'target' then
      control_target('release')
    end
    
  end
  
  
  -- env auto on or off
  if op[1] == 'auto' then
    if op[2] == nil then
      if mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() == 'TRUE' then
        mq.cmd.invoke('${maEnv.Add[swAuto,FALSE]}')
        out(3, '/control', op[1], 'FALSE')
      elseif mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() == 'FALSE' then
        mq.cmd.invoke('${maEnv.Add[swAuto,TRUE]}')
        out(3, '/control', op[1], 'TRUE')
      end
    else
      if op[2] == 'true' or op[2] == 'on' then
        mq.cmd.invoke('${maEnv.Add[swAuto,TRUE]}')
        out(3, '/control', op[1], 'TRUE')
      elseif op[2] == 'false' or op[2] == 'off' then
        mq.cmd.invoke('${maEnv.Add[swAuto,FALSE]}')
        out(3, '/control', op[1], 'FALSE')
      end
    end
  end
  

  -- rogue sos... Rogue...
  if op[1] == 'sos' and class[mq.TLO.Me.Class.ShortName()].sos then
   
    -- reasons to not SOS
    -- i'm already sos.. move on
    if mq.TLO.Me.Invis() and mq.TLO.Me.Sneaking() and not mq.TLO.Me.AbilityReady('hide')() and not mq.TLO.Me.AbilityReady('sneak')() then
      do return end
    -- sos switch not turned on
    elseif mq.TLO.Macro.Variable('maEnv').Find('swSoS').Value() == 'FALSE' then
      do return end
    -- stunned
    elseif mq.TLO.Me.Stunned() then
      do return end
    -- combat / casting
    elseif mq.TLO.Me.Combat() or mq.TLO.Me.Casting.ID() then
      do return end
    -- mounted
    elseif mq.TLO.Me.Mount.ID() then
      do return end
    end

    -- fix sneak
    if not mq.TLO.Me.Invis() and mq.TLO.Me.AbilityReady('hide')() and mq.TLO.Me.Sneaking() and not mq.TLO.Me.AbilityReady('sneak')() then
      out(2, 'Correct:', 'sneak skill')
      mq.cmd.doability('sneak')
      while not mq.TLO.Me.AbilityReady('sneak')() do
        mq.delay(200)
      end
    end
    
    if mq.TLO.Me.AbilityReady('sneak')() and mq.TLO.Me.AbilityReady('hide')() then 
      out(2, 'Engage:', 'SoS')
      mq.cmd.doability('sneak')
      while mq.TLO.Me.AbilityReady('sneak')() do
        mq.delay(200)
      end
      mq.delay(500)
      mq.cmd.doability('hide')
    end    
  end


  -- get lockpicks on cursor or put them away. tired of looking through the damn bags for them
  if op[1] == 'lockpicks' and class[mq.TLO.Me.Class.ShortName()]['lockpicks'] then
    if mq.TLO.Cursor.Name.Equal('Lockpicks')() then
      while mq.TLO.Cursor.Name.Equal('Lockpicks')() and mq.TLO.Me.FreeInventory() >= 1 do
        mq.cmd.autoinventory()
        mq.delay(100)
      end
    elseif not mq.TLO.Cursor.Name.Equal('Lockpicks')() and mq.TLO.FindItem('Lockpicks')() ~= nil then
      mq.cmd.nomodkey('/itemnotify "Lockpicks" leftmouseup')
    end
    out(2, '/control', 'lockpicks')
  end
  
  
  if op[1] == 'force' then
    
    -- check for false/no target.
    if not mq.TLO.Target.ID() then
      do return end
    end
    if mq.TLO.Target.ID() == mq.TLO.Me.ID() then
      do return end
    end      
    if mq.TLO.Target.ID() == mq.TLO.Me.Pet.ID() then
      do return end
    end      
    
    local spawnID = mq.TLO.Target.ID()
    mq.cmd.varset(string.format('stAssTarID %d', spawnID))
    mq.cmd.vardata('targetData Target.ID')
    mq.cmd.invoke('${maCC.Add[swValidAssTarID,TRUE]}')
    mq.cmd.invoke('${maCC.Add[swSetCombat,TRUE]}')
    mq.cmd.invoke('${maCC.Add[swSetForced,TRUE]}')
    mq.TLO.Macro.Variable('maMinion').Find('swonForce').Value()
    
    if mq.TLO.Macro.Variable('maMinion').Find('swonForce').Value() == 'TRUE' then
      mq.cmd.pet('attack')
      mq.cmd.pet('swarm')
    end

    
    if mq.TLO.Me.Invis() == 'true' then
      mq.cmd('/nomore invis')
    end
    
    out(2, '/control', 'force')
    
    
  end
  
  
  
end
mq.bind('/control', control)





------------------------------------------------------------
-- all the movement commands
-- use: /move [to, door, floor, ${target..}, duck, jump, rewind, sit, stand, dismount, stop, loc *xy, 
--
function move (...)
  local op = {...}
  -- local navlog = mq.TLO.Macro.Variable('maEntropy').Find('swNavLogSpew').Value()
  local navlog = zone['options']['nav']['log']
  local navdistance = zone['options']['nav']['distance']

  if op[1] == 'help' then  
    out(42, '/move', '[stop, stand, sit, duck, jump, rewind, loc y x, to name or id, door , service, floor]')
    out(42, '..', 'stand/sit/duck/jump/rewind/dismount')
    out(42, '..', 'door ## - moves to the door ## in Laurions Inn.')
    out(42, '..', 'door inn - moves to the door in LS zones that leads back to the Inn.') 
  end
  
  -- duck, duck, goose?
  if op[1] == 'duck' then
    if mq.TLO.Me.State() ~= 'duck' then
     if mq.TLO.Me.Mount.ID() ~= nil then
        mq.cmd.dismount()
      end
      if mq.TLO.Me.State() ~= 'stand' then
        mq.cmd.stand()
      end
      -- mq.cmd.stand()     
      mq.delay(800)
      mq.cmd.keypress('duck')
      mq.delay(100)
      mq.cmd.keypress('forward')
      out(2, '/move', 'duck')
    end
    
  -- move behind a target 
  elseif op[1] == 'behind' then
    

  -- sit down
  elseif op[1] == 'sit' then
    if mq.TLO.Me.State() ~= 'sit' then
      mq.cmd.sit()
      out(2, '/move', 'sit')
    end

  -- stand up
  elseif op[1] == 'stand' then
    if mq.TLO.Me.State() ~= 'stand' then
      mq.cmd.stand()
      out(2, '/move', 'stand')
    end
  
  -- jump, cause why not
  elseif op[1] == 'jump' then
    mq.cmd.keypress('jump')
    out(2, '/move', 'jump')
    
  -- rewind position
  elseif op[1] == 'rewind' then
    mq.cmd.rewind()
    out(2, '/move', 'rewind')

  -- stop all movement
  elseif op[1] == 'stop' then
    if op[2] == 'all' then   
      if mq.TLO.Navigation.Active() == true then
        mq.cmd.nav('stop |log=off')
      end
      if mq.TLO.Stick.Active() == true then
        mq.cmd.squelch('/stick off')
      end
      if mq.TLO.Me.Moving() == true then
        mq.cmd.keypress('forward')
        mq.cmd.keypress('back')
      end
    end
    out(2, '/move', 'stop all')




  -- door / floor / service
  elseif op[1] == 'door' or op[1] == 'floor' or op[1] == 'service' then
    
    if op[2] == 'help' then
      for key, value in pairs(zone[mq.TLO.Zone.ShortName()][op[1]]) do
        out('help', op[1], key, value.name)
      end  
    else  
      local yxz = zone[mq.TLO.Zone.ShortName()][op[1]][op[2]]['locyxz']
      local navlog = zone['options']['nav']['log']
      local destname = zone[mq.TLO.Zone.ShortName()][op[1]][op[2]]['name']
      mq.cmd.nav('locyxz ' .. yxz .. ' |log=' .. navlog)
      out(2,'Moving to '.. op[1] .. echo.out.sep, destname)
    end






  -- move to something
  elseif op[1] == 'to' then

    if mq.TLO.Target.ID() ~= 0 and op[2] == nil then
      
      local _spawn = mq.TLO.Target
      local melee_distance = math.abs(_spawn.MaxRangeTo() * tonumber(string.format(".%.1d", mq.TLO.Macro.Variable('maHard').Find('stMaxMeleeAdj').Value())))
      out(2, '/move to', _spawn.DisplayName())
      mq.cmd.nav('id ' .. _spawn.ID() .. '|dist=' .. melee_distance .. ' log='.. navlog)

    elseif op[2] ~= nil then
      -- error check
      if mq.TLO.Spawn(op[2]).ID() <= 1 then
        out(2.1, '/move to', op[2], 'invalid spawn ID')
        return
      end
      local _spawn = mq.TLO.Spawn(op[2])
      local melee_distance = math.abs(_spawn.MaxRangeTo() * tonumber(string.format(".%.1d", mq.TLO.Macro.Variable('maHard').Find('stMaxMeleeAdj').Value())))


      if mq.TLO.Navigation.PathExists('id ' .. _spawn.ID())() == true then
        out(2, '/move to', _spawn.DisplayName())
        mq.cmd.nav('id ' .. _spawn.ID() .. '|dist=' .. melee_distance .. ' log='..navlog)
      else
        out(2, '/move to', _spawn.DisplayName().. ' \arno valid path\ax')
      end

    end

 
  -- move to location
  elseif op[1] == 'loc' then
    -- error check
    if op[2] == nil then
      op[2] = '?'
    elseif op[3] == nil then
      op[3] = '?'
    end
    if op[2] == '?' or op[3] == '?' then
      out(2, '/move loc \arError: \axy=' .. op[2] .. ' x=' .. op[3])
      return
    end
    --print(outs['move'] ..'LOC \a-ty:\ax' .. op[2] .. ' \a-tx\ax' .. op[3])
    mq.cmd.nav('locyxz ' .. op[2] .. ' ' .. op[3] .. ' |dist=6 log=' .. navlog)
    
    
  -- move to port item (guild hall clickie things)
  -- elseif op[1] == 'item' then

    --mq.cmd.invoke('${Ground.Search['..op[2]..']}')
    --mq.cmd.declare('_item ground local')
    --local itemID = mq.TLO.Macro.Variable('_item.ID')()

    --print(itemID)
    
    -- mq.cmd.invoke(mq.TLO.Ground.Search(op[2]))
    --mq.cmd.invoke('${Ground.Search['..itemID..']}')
    --mq.cmd.nav('item')
    
    
    
   -- /invoke ${Ground.Search[${_item.ID}]}
   -- /nav item |dist=15 log=${maEntropy.Find[swNavLogSpew].Value}    
    
    
    
    -- mq.TLO.Macro.Variable('_item.ID')()
    
    
    
    
    
  end
end
mq.bind('/move', move)





------------------------------------------------------------
-- clears the screen of mob corpse trash
-- use: /cls [help]
--
function cls (...)
  local op = {...}

  local help = {}
  help['/cls'] = 'clears screen of mob trash'
   
  if op[1] == 'help' then
    out(42, '/cls', 'clears screen of mob trash')
  else
    out(1, "Taking out the corpse trash.")
    mq.cmdf('/hidecorpse %s', 'NPC')
    mq.cmdf('/hidecorpse %s', 'LOOTED')
  end
end
mq.bind('/cls', cls)







------------------------------------------------------------
-- build ui
-- use: /build
--
local build = function (...)
  -- local op = {...}
  
  -- dofile('"' .. mq.TLO.MacroQuest.Path('macros')() .. '\\entropy\\lua\\ent.lua')
  -- dofile('ent.lua')
  -- dofile(mq.TLO.MacroQuest.Path('macros')() .. '\\entropy\\lua\\ent.lua')

end
-- mq.bind('/build', build)














------------------------------------------------------------
-- test for watch
-- use: /namewatch
--

function namewatch()
    nameList = zone[getZoneShortName()]['named']
    if nameList then
        print(string.format('\ayLoading \ag%d\ax entries into named list:', #nameList))
        for _, v in pairs(nameList) do
            --mq.cmd.squelch('/alert add 1 "' .. v .. '"')
            print(string.format('  \ay%s', v))
        end
        mq.cmd.echo('\ay-------------------------------')

    else
        print(string.format('\ayNothing in ignore list for \ag%s', zoneName))
    end
end
mq.bind('/namewatch', namewatch)






-- add ignore mobs to alert list
function AddMobsToIgnoreListInGroup(zoneName)
    local ignoreList = IgnoreLists[zoneName]
    if ignoreList then
        print(string.format('\ayLoading \ag%d\ax entries into ignore list:', #ignoreList))
        for _, v in pairs(ignoreList) do
            mq.cmd.squelch('/alert add 1 "' .. v .. '"')
            print(string.format('  \ay%s', v))
        end
        mq.cmd.echo('\ay-------------------------------')
        --mq.cmd.alert('list 1')
    else
        print(string.format('\ayNothing in ignore list for \ag%s', zoneName))
    end
end

















------------------------------------------------------------
-- kees the lua script running
-- use: NA
--
local running = true
while running do
    if mq.TLO.EverQuest.GameState() == 'INGAME' then
      mq.delay(100)
    else
      local running = false
    end
end











