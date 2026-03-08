--
-- entropoy.mac
-- common.lua
-- 
-- lua shared stuffs
--

local mq = require 'mq'
local ICON = require 'mq/icons'
require 'list_tooltip'




discord = '${If[${Bool[${Plugin[MQ2Discord]}]},\at-\ax,]}'
classTable = { "WAR", "PAL", "SHD", "BST", "ROG", "MNK", "RNG", "BER", "CLR", "SHM", "DRU", "WIZ", "NEC", "ENC", "MAG", "BRD" }



class = {

  WAR = { 
    pet = false, wis = false, int = false, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  PAL = { 
    pet = false, wis = true, int = false, sos = false, lockpicks = false, sing = false, splash = true,
    twinheal = true, crowdcontrol = false
  },
  
  SHD = { 
    pet = true, wis = false, int = false, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  BST = { 
    pet = true, wis = false, int = false, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  ROG = { 
    pet = false, wis = false, int = false, sos = true, lockpicks = true, sing = false, splash = false,
    twinheal = false, crowdcontrol = true
  },
  
  MNK = { 
    pet = false, wis = false, int = false, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  RNG = { 
    pet = false, wis = false, int = false, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  BER = { 
    pet = false, wis = false, int = false, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  CLR = { 
    pet = false, wis = true, int = false, sos = false, lockpicks = false, sing = false, splash = true,
    twinheal = true, crowdcontrol = false
  },
  
  SHM = { 
    pet = true, wis = true, int = false, sos = false, lockpicks = false, sing = false, splash = true,
    twinheal = true, crowdcontrol = false
  },
  
  DRU = { 
    pet = false, wis = true, int = false, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = true, crowdcontrol = false
  },
  
  WIZ = { 
    pet = false, wis = false, int = true, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  NEC = { 
    pet = false, wis = false, int = true, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = false
  },
  
  ENC = { 
    pet = false, wis = false, int = true, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = true
  },
  
  MAG = { 
    pet = true, wis = false, int = true, sos = false, lockpicks = false, sing = false, splash = false,
    twinheal = false, crowdcontrol = true
  },
  
  BRD = { 
    pet = false, wis = false, int = false, sos = false, lockpicks = true, sing = true, splash = false,
    twinheal = false, crowdcontrol = true
  }


}



edit = {
  
  switchbox = function (name, map, var, tt, cmd)
    local switchname = ""
    local buttonname = ""
    
    if cmd ~= nil then
      buttonname = name
    else 
      switchname = name
    end
    
    local switch, checked = ImGui.Checkbox(switchname..'##'..var, mq.TLO.Macro.Variable(map).Find(var).Value() == 'TRUE')
    if checked then
      mq.cmd.luaedit(var, switch and 'TRUE' or 'FALSE')
    end
    tooltip(false, tt)
    if cmd ~= nil then
      ImGui.SameLine()
      local _button = ImGui.Button(buttonname, 55, 22)
      if _button then
        mq.cmd('/'..cmd)
      end        
      
    end
  end,
   
  linetext = function (name, map, var, tt, options)  
 
    if options.sb then
      local tempvar = 'sw'..string.sub(var, 3)
      local switch, checked = ImGui.Checkbox('##'..name..var, mq.TLO.Macro.Variable(map).Find(tempvar).Value() == 'TRUE')
      
      if checked then
        mq.cmd.luaedit(tempvar, switch and 'TRUE' or 'FALSE')
      end
      ImGui.SameLine()

    elseif options.rb then
      local resettype = (options.list and 'clear' or 'FALSE')
      local linereset = ImGui.Button(echo.icon.clear..'##linereset'..var, echo.icon.x, echo.icon.y)
      if linereset then
        mq.cmd.luaedit(var, resettype)
      end
      tooltip(false, 'reset')
      ImGui.SameLine()
    end
    
    local line, selected = ImGui.InputTextWithHint(name..'##'..var, tostring(mq.TLO.Macro.Variable(map).Find(var).Value()), '', ImGuiInputTextFlags.EnterReturnsTrue)
    if selected then
      mq.cmd.luaedit(var, '"'..line..'"', 'overwrite')
    end  
    tooltip(false, tt)
  
  end,
  
  controllist = function(mapSuffix, lscount, options)
    local map = 'ma'..mapSuffix
    local switch = 'sw'..mapSuffix
    local string = 'st'..mapSuffix

    if ImGui.TreeNode(options.name..'##'..mapSuffix) then

      -- alternate order list
      if options.alternate then
        edit.linetext('line', map, 'lsLine'..mapSuffix, tip.alternateline, {sb=false, rb=true, list=true})
        ImGui.NewLine()
      end

      for i=1,lscount do 
        ImGui.TextColored(0.39, 0.58, 0.92, 1, i)
        ImGui.SameLine()
        if mq.TLO.Macro.Variable(map).Find(switch..i).Value() == 'TRUE' then

          -- on/off switch
          edit.switchbox('', map, switch..i, nil)
          ImGui.SameLine()
          
          indent(i,3)

          -- list item name
          edit.linetext('name', map, 'st'..mapSuffix..i, nil, {sb=false, rb=true, list=false})              

          -- alias
          if options.alias then
            edit.linetext('alias', map, 'st'..mapSuffix..i..'Alias', nil, {sb=false, rb=true, list=false})              
          end
          
          -- tag
          if options.tag then
            edit.linetext('tag', map, 'ls'..mapSuffix..i..'Tag', nil, {sb=false, rb=true, list=true})              
          end

          indent(i,4)
          
        else 
          if mq.TLO.Macro.Variable(map).Find('st'..mapSuffix..i).Value() == 'FALSE' then
            tmpName = '##'..switch..i
          else
            tmpName = mq.TLO.Macro.Variable(map).Find('st'..mapSuffix..i).Value()..'##'..switch..i
          end            
          
          local _switch, pressed = ImGui.Checkbox(tmpName, mq.TLO.Macro.Variable(map).Find(switch..i).Value() == 'TRUE')
          if pressed then
            mq.cmd.luaedit(switch..i, _switch and 'TRUE' or 'FALSE')
          end
        end
      end
      ImGui.TreePop()      

    end
  end, 
 
  selectlist = function(name, map, var, choices, tt)
    local droplist = mq.TLO.Macro.Variable(map).Find(var).Value()
    if ImGui.BeginCombo(name, droplist) then
      for _, v in ipairs(choices) do
        local selected = v == droplist
        if ImGui.Selectable(v, selected) and not selected then
          if string.sub(var, 1, 2) == 'ls' then
            if mq.TLO.Macro.Variable(var).Contains(v)() then
              mq.cmd.edit(var .. ' ' .. v .. ' delete')
            else
              mq.cmd.edit(var .. ' ' .. v .. ' add')
            end
          else 
            mq.cmd.luaedit(var, v)
          end
        end
      end
      ImGui.EndCombo()
    end
      tooltip(false, tt)
  end, 
  
  dragtext = function(name, map, var, startnum, stopnum, tt)  
    local dragrange = tonumber(mq.TLO.Macro.Variable(map).Find(var).Value())
    dragrange, used = ImGui.DragInt(name, dragrange, startnum, 0, stopnum);
    if used then
      mq.cmd.luaedit(var, dragrange)  
    end       
    tooltip(false, tt)
    
  end
  
  
  
}




rez = {
  radius = tonumber(mq.TLO.Macro.Variable('maRez').Find('stMaxRezRange').Value() or 0)
}


echo = {}
  echo['icon'] = {
    none = '',
    y = 22,
    x = 22,
    invis = ICON.FA_EYE,
    invisvsundead = ICON.MD_REMOVE_RED_EYE,
    levi = ICON.MD_FILTER_DRAMA,
    movement = ICON.MD_DIRECTIONS_RUN,
    here = ICON.MD_LOCATION_ON,
    noinvis = ICON.FA_EYE_SLASH,
    nolevi = ICON.MD_CLOUD_OFF,
    auto = ICON.FA_TOGGLE_OFF,
    manual = ICON.FA_TOGGLE_ON,
    allauto = ICON.FA_PLAY,
    allmanual = ICON.FA_STOP,
    tie = ICON.MD_GESTURE,
    tienav = ICON.MD_NAVIGATION,
    tiestick = ICON.FA_STICKY_NOTE,
    incharge = ICON.MD_INSERT_LINK,
    intpull = ICON.MD_EXPOSURE_PLUS_1,
    gather = ICON.FA_USERS,
    autoinventory = ICON.MD_IMPORT_CONTACTS,
    hail = ICON.FA_WEIXIN,
    assist = ICON.FA_EXCHANGE,
    campfire = ICON.FA_FIRE,
    mqp = ICON.FA_PAUSE,
    home = ICON.MD_HOME,
    cure = ICON.FA_BUG,
    say = ICON.MD_CHAT,
    banner = ICON.FA_FLAG_O,
    hide = ICON.MD_DIRECTIONS_RUN,
    aura = ICON.MD_PANORAMA_FISH_EYE,
    drive = ICON.MD_DRIVE_ETA,
    radar = ICON.MD_SETTINGS_INPUT_ANTENNA,
    target = ICON.FA_BULLSEYE,
    event = ICON.MD_EVENT,
    notes = ICON.MD_NOTE,
    arrowleft = ICON.MD_ARROW_BACK,
    pet = ICON.MD_PETS,
    num1 = ICON.MD_FILTER_1,
    num2 = ICON.MD_FILTER_2,
    num3 = ICON.MD_FILTER_3,
    num4 = ICON.MD_FILTER_4,
    num5 = ICON.MD_FILTER_5,
    num6 = ICON.MD_FILTER_6,
    num7 = ICON.MD_FILTER_7,
    num8 = ICON.MD_FILTER_8,
    num9 = ICON.MD_FILTER_9,
    port = ICON.FA_MAP_O,
    add = ICON.FA_PLUS_SQUARE,
    subtract = ICON.FA_MINUS_SQUARE,
    nosee = ICON.FA_EYE_SLASH,
    clear = ICON.FA_RECYCLE
  }
  echo['out'] = {
    num = '\a-t',
    submenu = '\a#1E90FF->\ax',
    r0 = '\ar0\ax',
    erroro = '\arERROR\ax',
    tar = '\a-w',
    pc = '\a-w',
    sp = '\a-r',
    bad = '\ar',
    good = '\ag',
    bug = '\at',
    info = '\aw',
    sep = '\a#AA00AA::\ax',
    dot = '\at.\ax',
    on = '\agon\ax',
    off = '\aroff\ax',
    warning = '\arWARNING\ax',
    fatal = '\arFATAL ERROR\ax \at..\ax \arENDING MACRO\ax',
    fataldb = '\arFATAL DATABASE ERROR\ax',
    caution = '\arCAUTION\ax',
    trueo = '\arTRUE\ax',
    falseo = '\arFALSE\ax',
    destroy = '\arDESTROY\ax',
    leave = '\awLeave\ax',
    add = '\agAdd\ax',
    keep = '\agKeep\ax',
    notice = '\ayNotice\ax',
    combat = '\amCombat\ax',
    removing = '\arRemoving\ax',
    broadcast = 'Broadcast',
    breako = '${sep}\a#FF06BBbreak\ax${sep}',
    lsep = 'a#00FFFF :: \a#C0C0C0',
    enabled = '\agenabled\ax',
    disabled = '\ardisabled\ax',
    tern = '--'    
  }



env = {}




util = {
  
  


  -- various file names and their locations
  files = {

    -- character file
    character = function (...)    
      local op = {...}
      if op[1] == location then
        local chrpath = string.format('%s\\entropy\\inc\\class.' .. mq.TLO.Me.Class.ShortName() .. '.inc', mq.TLO.MacroQuest.Path('macros')())
        return chrpath
      end
    end,

    -- character database
    DBcharacter = function (...)    
      local op = {...}
      local dbname = string.lower(mq.TLO.MacroQuest.Server()) .. '_' .. mq.TLO.Me.Class.ShortName() .. '_' .. mq.TLO.Me.DisplayName() .. '.sqlite'
      if op[1] == location then
        local dbpath = string.format('%s\\entropy\\data\\%s', mq.TLO.MacroQuest.Path('macros')(), dbname)
        return dbpath
      elseif op[1] == name then
        return dbname
      end
    end,
    
    -- main database
    DBstatic = function (...)
      local op = {...}
      local dbname = 'entropy.sqlite'
      if op[1] == location then
        local dbpath = string.format('%s\\entropy\\data\\%s', mq.TLO.MacroQuest.Path('macros')(), dbname)
        return dbpath
      elseif op[1] == name then
        return dbname
      end
    end,

    -- loot database
    DBloot = function (...)
      local op = {...}
      local dbname = 'loot.sqlite'
      if op[1] == location then
        local dbpath = string.format('%s\\entropy\\data\\%s', mq.TLO.MacroQuest.Path('macros')(), dbname)
        return dbpath
      elseif op[1] == name then
        return dbname
      end
    end,
    
    -- nav database
    DBnav = function (...)
      local op = {...}
      local dbname = 'nav.sqlite'
      if op[1] == location then
        local dbpath = string.format('%s\\entropy\\data\\%s', mq.TLO.MacroQuest.Path('macros')(), dbname)
        return dbpath
      elseif op[1] == name then
        return dbname
      end
    end,
    
    -- zone database
    DBzone = function (...)
      local op = {...}
      local dbname = 'zone.sqlite'
      if op[1] == location then
        local dbpath = string.format('%s\\entropy\\data\\%s', mq.TLO.MacroQuest.Path('macros')(), dbname)
        return dbpath
      elseif op[1] == name then
        return dbname
      end
    end,
    
    -- shared database
    DBshared = function (...)
      local op = {...}
      local dbname = 'shared.sqlite'
      if op[1] == location then
        local dbpath = string.format('%s\\entropy\\data\\%s', mq.TLO.MacroQuest.Path('macros')(), dbname)
        return dbpath
      elseif op[1] == name then
        return dbname
      end
    end
  }, 

  -- thingies for the hud.
  hud = {
    
    headder = function (...)
      local op = {...}
      local swBreak = false
      local build = mq.TLO.Macro.Variable('maEnv').Find('build').Value() or '--'
      local buildout = ''
      local toonname = ''
      local auto = ''
      local inv = ''
      local ivu = ''
      local macname = ''
      local dash = nil
      local sos = ''

      -- buid hud variables
      if build ~= '--' then 

        -- title?
        if mq.TLO.Macro.Variable('maHud').Find('swTitleEnt').Value() == 'TRUE' then
          macname = 'Entropy'
          swBreak = true
        end

        -- build
        if mq.TLO.Macro.Variable('maHud').Find('swTitleBuild').Value() == 'TRUE' then
          buildout = (swBreak and dash or ' ') .. build
          swBreak = true
        end

        -- toon name?
        if mq.TLO.Macro.Variable('maHud').Find('swTitleName').Value() == 'TRUE' then
          toonname = (swBreak and dash or ' ') .. mq.TLO.Me.DisplayName()
          swBreak = true
        end  

        -- auto on or off?
        if mq.TLO.Macro.Variable('maHud').Find('swTitleAM').Value() == 'TRUE' then
          if mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() == 'TRUE' then
            auto = (swBreak and ent.dash or ' ') .. 'auto'
            swBreak = true
          else
            auto = (swBreak and dash or ' ') .. 'manual'
            swBreak = true
          end
        end

        -- invis 
        if mq.TLO.Macro.Variable('maHud').Find('swTitleIV').Value() == 'TRUE' then
          if mq.TLO.Me.SPA(12)() ~= 0 or mq.TLO.Me.SPA(314)() ~= 0 then
            inv = (swBreak and dash or ' ') .. echo.icon.invis
            swBreak = true
          end
        end
        
        -- ivu
        if mq.TLO.Macro.Variable('maHud').Find('swTitleIVU').Value() == 'TRUE' then
          if mq.TLO.Me.SPA(28)() ~= 0 or mq.TLO.Me.SPA(315)() ~= 0 then
            ivu = (swBreak and dash or ' ') .. echo.icon.invisvsundead
            swBreak = true
          end
        end
        
        
        -- SoS: rogue only
        if mq.TLO.Me.Class.ID() == 9 then
          if not mq.TLO.Me.AbilityReady('hide')() and mq.TLO.Me.Sneaking() and not mq.TLO.Me.AbilityReady('sneak')() then
            sos = (swBreak and dash or ' ') .. echo.icon.nosee
          end
        end
        
        -- heal adjust
        if mq.TLO.Macro.Variable('maHud').Find('swTitleHealAdj').Value() == 'TRUE' then
          if ent.hudadj ~= 0 and swBreak then 
            ent.hudadj = ent.hudadj
          else
            ent.hudadj = ''
          end
        else 
          ent.hudadj = ''
        end

        -- build hud string
        return macname .. buildout .. toonname .. auto .. inv .. ivu .. sos .. ent.hudadj

      else
        return '---'
      end
    end,
 
    buttons_bottom = function (...)
      local op = {...}
      if mq.TLO.Macro.Variable('maHud').Find('swHUDbuttons').Value() == "TRUE" then
        ImGui.Separator()
        util.button.allauto(false, sl)
        util.button.allmanual(false, sl)
        util.button.auto(false, sl)
        util.button.tie(false, sl)
        util.button.tienav(false, sl)
        util.button.tiestick(false, sl)
        util.button.incharge(false, sl)
        util.button.invis(false, sl)
        util.button.noinvis(false, sl)
        util.button.intpull(false, sl)
        util.button.gather(false, sl)
        util.button.here(false, sl)
        util.button.radar(false, sl)
        util.button.drive(false, sl)
        util.button.movement(false, sl)
      end
    end,

    tab_raid = function (...)
      local op = {...}
      if ImGui.BeginTabItem('Raid') then
        
        local huddebug = {
          unkemptwoods_raid = false,
          ankexfen_raid = false,
          mischiefplane_raid = false,
          gildedspire_missiontwo = false,
          landing_raid = false
        }

        -- gildedspire_missiontwo High Priest Yaran

        if mq.TLO.Zone.ShortName() == 'toe_raid' or huddebug.landing_raid then 
          ImGui.Columns(3, 'raids', false)
            ImGui.NextColumn() 

            cmd_button('', echo.icon.x, echo.icon.y)
            ImGui.SameLine()

            --red
            local loc31red = mq.TLO.Macro.Variable('maEvent').Find('st31LandingRedYX').Value()
            cmd_button('R', echo.icon.x, echo.icon.y, 'nav locyxz '..loc31red..' |log=off', 'red')
            ImGui.SameLine()
            cmd_button('', echo.icon.x, echo.icon.y)

            --yellow
            local loc31yellow = mq.TLO.Macro.Variable('maEvent').Find('st31LandingYellowYX').Value()
            cmd_button('Y', echo.icon.x, echo.icon.y, 'nav locyxz '..loc31yellow..' |log=off', 'yellow')
            ImGui.SameLine()
            --center
            local loc31center = mq.TLO.Macro.Variable('maEvent').Find('st31LandingCenterYX').Value()
            cmd_button('C', echo.icon.x, echo.icon.y, 'nav locyxz '..loc31center..' |log=off', 'center')
            ImGui.SameLine()
            --green
            local loc31green = mq.TLO.Macro.Variable('maEvent').Find('st31LandingGreenYX').Value()
            cmd_button('G', echo.icon.x, echo.icon.y, 'nav locyxz '..loc31green..' |log=off', 'green')
            cmd_button('', echo.icon.x, echo.icon.y)
            ImGui.SameLine()

            --blue
            local loc31blue = mq.TLO.Macro.Variable('maEvent').Find('st31LandingBlueYX').Value()
            cmd_button('B', echo.icon.x, echo.icon.y, 'nav locyxz '..loc31blue..' |log=off', 'blue')
            ImGui.SameLine()
            cmd_button('', echo.icon.x, echo.icon.y)

          ImGui.NextColumn()
            event.buttons.basic(false)
          ImGui.Columns()    


        elseif mq.TLO.Zone.ShortName() == 'gildedspire_missiontwo' or huddebug.gildedspire_missiontwo then 
          ImGui.Columns(3, 'raids', false)
            local loc01 = mq.TLO.Macro.Variable('maEvent').Find('st31M2NWLocYX').Value()
            cmd_button('NW', 50, echo.icon.y, 'nav locyxz '..loc01..' |log=off', 'move NW corner')

            local spawnPriestID = mq.TLO.Spawn('High Priest Yaran').ID()
            cmd_button('Priest', 50, echo.icon.y, 'nav id '..spawnPriestID..' |log=off', 'return to priest')

         ImGui.NextColumn() 
            local loc02 = mq.TLO.Macro.Variable('maEvent').Find('st31M2SELocYX').Value()
            cmd_button('SE', 50, echo.icon.y, 'nav locyxz '..loc02..' |log=off', 'move SE corner')
          ImGui.NextColumn()
            event.buttons.basic(false)
          ImGui.Columns()     
       
        -- artisan and the druid 9 position raid portion::unkemptwoods_raid
        elseif mq.TLO.Zone.ShortName() == 'unkemptwoods_raid' or huddebug.unkemptwoods_raid then 
          ImGui.Columns(3, 'raids', false)
          ImGui.NextColumn() 
            local loc01 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan01YX').Value()
            cmd_button(echo.icon.num1, echo.icon.x, echo.icon.y, 'nav locyxz '..loc01..' |log=off', '1')
            ImGui.SameLine()
            local loc02 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan02YX').Value()
            cmd_button(echo.icon.num2, echo.icon.x, echo.icon.y, 'nav locyxz '..loc02..' |log=off', '2')
            ImGui.SameLine()
            local loc03 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan03YX').Value()
            cmd_button(echo.icon.num3, echo.icon.x, echo.icon.y, 'nav locyxz '..loc03..' |log=off', '3')
            local loc04 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan04YX').Value()
            cmd_button(echo.icon.num4, echo.icon.x, echo.icon.y, 'nav locyxz '..loc04..' |log=off', '4')
            ImGui.SameLine()
            local loc05 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan05YX').Value()
            cmd_button(echo.icon.num5, echo.icon.x, echo.icon.y, 'nav locyxz '..loc05..' |log=off', '5')
            ImGui.SameLine()
            local loc06 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan06YX').Value()
            cmd_button(echo.icon.num6, echo.icon.x, echo.icon.y, 'nav locyxz '..loc06..' |log=off', '6')
            local loc07 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan07YX').Value()
            cmd_button(echo.icon.num7, echo.icon.x, echo.icon.y, 'nav locyxz '..loc07..' |log=off', '7')
            ImGui.SameLine()
            local loc08 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan08YX').Value()
            cmd_button(echo.icon.num8, echo.icon.x, echo.icon.y, 'nav locyxz '..loc08..' |log=off', '8')
            ImGui.SameLine()
            local loc09 = mq.TLO.Macro.Variable('maEvent').Find('st30Artisan09YX').Value()
            cmd_button(echo.icon.num9, echo.icon.x, echo.icon.y, 'nav locyxz '..loc09..' |log=off', '9')
          ImGui.NextColumn()
            event.buttons.basic(false)
          ImGui.Columns()    

        -- harry potter raid...
        elseif mq.TLO.Zone.ShortName() == 'ankexfen_raid' or huddebug.ankexfen_raid then
          
          local idNav = mq.TLO.Spawn('npc navulta').ID()
          local idSwarn = mq.TLO.Spawn('npc swarn').ID()
          local idZora = mq.TLO.Spawn('npc zoraxmen').ID()
          
          ImGui.Columns(3, 'raids', false)
          --empty for other things
          ImGui.NextColumn() 
            cmd_button('Navulta', 90, 22, 'move to ' ..idNav)
            cmd_button('Swarn', 90, 22, 'move to ' .. idSwarn)
            cmd_button('Zoraxmen', 90, 22, 'move to ' .. idZora)
          ImGui.NextColumn()
            event.buttons.basic(false)
          ImGui.Columns()    


        -- PoM Raid
        elseif mq.TLO.Zone.ShortName() == 'mischiefplane_raid' or huddebug.mischiefplane_raid then        
          ImGui.Columns(2, 'raids', false)

            util.button.edittarget('st30BidilsPassToon1')
            ImGui.SameLine()
            edit_text_perm('', 'maEvent', 'st30BidilsPassToon1')
            util.button.edittarget('st30BidilsPassToon2')
            ImGui.SameLine()
            edit_text_perm('', 'maEvent', 'st30BidilsPassToon2') 
            cmd_button('pass', 60, 22, 'event pass')            
          ImGui.NextColumn()
            event.buttons.basic()
          ImGui.Columns()    

        
        -- default tab display
        else
          
          ImGui.Columns(2, 'raids', false)
          ImGui.NextColumn()
            event.buttons.basic()
          ImGui.Columns()   
        end
        
      
      ImGui.EndTabItem()
      end

    end,
    
    home_tab_target_info = function (...)
      -- engage %s, target body, distances
      ImGui.TextColored(0.39, 0.58, 0.92, 1, '[')
      ImGui.SameLine()
      ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Macro.Variable('maCC').Find('stPctEngage').Value() or ''))
      ImGui.SameLine()
      ImGui.TextColored(0.39, 0.58, 0.92, 1, '][')
      ImGui.SameLine()
      ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Macro.Variable('maMinion').Find('stPctPetEngage').Value() or ''))
      ImGui.SameLine()
      ImGui.TextColored(0.39, 0.58, 0.92, 1, '][')
      ImGui.SameLine()
      ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Macro.Variable('maMinion').Find('stPctSwarmEngage').Value() or ''))
      ImGui.SameLine()
      ImGui.TextColored(0.39, 0.58, 0.92, 1, '][')
      ImGui.SameLine()
      ImGui.TextColored(1, 1, 1, 1, (mq.TLO.Target.Body.Name() or ''))
      ImGui.SameLine()
      ImGui.TextColored(0.39, 0.58, 0.92, 1,']')
      ImGui.SameLine()
      ImGui.Text(string.format('%.0f : %.0f', mq.TLO.Target.Distance() or 0 , mq.TLO.Target.MaxRangeTo() or 0))
      ImGui.SameLine()
      ImGui.TextColored(1, 1, 1, 1, (isSlowedBase() or ''))
      if mq.TLO.Target.ID() ~= 0 then
        local spawn = mq.TLO.Spawn(mq.TLO.Target.ID())
        local guildName = ' '
        if spawn.Guild() ~= nil then 
          guildName = '<' .. spawn.Guild()  .. '>'
        end
        if spawn.LineOfSight() then
          if mq.TLO.Macro.Variable('maHud').Find('swHUDDisplayName').Value() == 'TRUE' then
            ImGui.TextColored(0, 1, 0, 1, '[' .. spawn.Class.ShortName() .. ' ' .. spawn.Level() .. '] ' .. spawn.DisplayName() .. ' ' .. guildName )
          else
            ImGui.TextColored(0, 1, 0, 1, '[' .. spawn.Class.ShortName() .. ' ' .. spawn.Level() .. '] ' .. spawn.Name() .. ' ' .. guildName )
           end
        else
          if mq.TLO.Macro.Variable('maHud').Find('swHUDDisplayName').Value() == 'TRUE' then
            ImGui.TextColored(1, 0, 0, 1, '[' .. spawn.Class.ShortName() .. ' ' .. spawn.Level() .. '] ' .. spawn.DisplayName() .. ' ' .. guildName )
          else
            ImGui.TextColored(1, 0, 0, 1, '[' .. spawn.Class.ShortName() .. ' ' .. spawn.Level() .. '] ' .. spawn.Name() .. ' ' .. guildName )
          end
       end

      else
        ImGui.TextDisabled('')
      end
    end
    
  }, 

  -- environment settings
  env = {
    
    build = function ()
      if not mq.TLO.Macro.Variable('maEnv').Find('build').Value() then
        return nil
      else 
        return mq.TLO.Macro.Variable('maEnv').Find('build').Value()
      end
    end,
    
    auto = function ()
      if mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() == 'TRUE' then
        return true
      elseif mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() == 'FALSE' then
        return false
      else
        return nil
      end
    end
  }, 

  -- useful buttons.. or not.. who knows
  button = {
    
    -- edits a single location
    edityxz = function (...)
      local op = {...}

      ImGui.PushID('##'..op[2])
      local _button = ImGui.Button(echo.icon.add, echo.icon.x, echo.icon.y)
      if _button then
        mq.cmdf('/edit %s "%s %s %s"', op[2], round(mq.TLO.Me.Y(), 2), round(mq.TLO.Me.X(), 2), round(mq.TLO.Me.Z(), 2))
      end
      ImGui.PopID()
    end,

    -- adds a loc to a list
    addyxz = function (...)  
      local op = {...}
      ImGui.PushID('##'..op[1])
      local _button = ImGui.Button(echo.icon.add, echo.icon.x, echo.icon.y)
      if _button then
        mq.cmdf('/edit %s "%s %s %s" add', op[1], round(mq.TLO.Me.Y(), 2), round(mq.TLO.Me.X(), 2), round(mq.TLO.Me.Z(), 2))
      end   
      ImGui.PopID()       
    end,

    -- edits a target name
    edittarget = function (...)
      local op = {...}
      ImGui.PushID('##'..op[1])
      local _button = ImGui.Button(echo.icon.add, echo.icon.x, echo.icon.y)
      if _button then
       mq.cmdf('/edit %s "%s"', op[1], mq.TLO.Target.DisplayName())
      end         
      ImGui.PopID()       
    end,

    -- all toon auto
    allauto = function (...)
      local op = {...}
      if btnoptn('allauto') then 
        cmd_button(echo.icon.allauto, echo.icon.x, echo.icon.y, 'on', tip.all_auto) 
        if op[2] == sl then ImGui.SameLine() end
      end   
    end,

    -- turn all toons macro to manual
    allmanual = function (...)
      local op = {...}
      if btnoptn('allmanual') then 
        cmd_button(echo.icon.allmanual, echo.icon.x, echo.icon.y, 'off', tip.all_manual)
        if op[2] == sl then ImGui.SameLine() end
      end  
    end,

    -- turn macro to auto, or off        
    auto = function (...)
      local op = {...}
      if btnoptn('auto') then 
        if mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() == 'TRUE' then
          cmd_button(echo.icon.manual, echo.icon.x, echo.icon.y, 'env auto', tip.macro_auto)
        else 
          cmd_button(echo.icon.auto, echo.icon.x, echo.icon.y, 'env auto', tip.macro_manual)
        end
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- turn tie on or off with current settings
    tie = function (...)
      local op = {...}
      if btnoptn('tie') then 
        cmd_button(echo.icon.tie, echo.icon.x, echo.icon.y, 'dga /tie', tip.all_tie)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- tie to selected toon with nav (mq2nav)
    tienav = function (...)
      local op = {...}
      if btnoptn('tienav') then 
        cmd_button(echo.icon.tienav, echo.icon.x, echo.icon.y, 'dga /tie nav', tip.all_tie_nav)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- tie to incharge toon with stick (mq2moveutils)
    tiestick = function (...)
      local op = {...}
      if btnoptn('tiestick') then 
        cmd_button(echo.icon.tiestick, echo.icon.x, echo.icon.y, 'dga /tie stick', tip.all_tie_stick)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- set selected toon in charge for tie purposes
    incharge = function (...)
      local op = {...}
      if btnoptn('incharge') then 
        cmd_button(echo.icon.incharge, echo.icon.x, echo.icon.y, 'env incharge', tip.incharge)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- attempt to stack invis
    invis = function (...)
      local op = {...}
      if btnoptn('invis') then 
        cmd_button(echo.icon.invis, echo.icon.x, echo.icon.y, 'invis', tip.stackinvis)
         if op[2] == sl then ImGui.SameLine() end
     end
    end,
    
    -- remove invis for everyone
    noinvis = function (...)
      local op = {...}
      if btnoptn('noinvis') then 
        cmd_button(echo.icon.noinvis, echo.icon.x, echo.icon.y, 'dga /nomore invis', tip.noinvis)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- request an intervention pull from nearest cleric
    intpull = function (...)
      local op = {...}
      if btnoptn('intpull') then 
        cmd_button(echo.icon.intpull, echo.icon.x, echo.icon.y, 'pull one int', tip.intervention_pull)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- gather all toons to you
    gather = function (...)
      local op = {...}
      if btnoptn('gather') then 
        cmd_button(echo.icon.gather, echo.icon.x, echo.icon.y, 'gather', tip.gather)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- force combat now. wherever you are
    here = function (...)
      local op = {...}
      if btnoptn('here') then 
        cmd_button(echo.icon.here, echo.icon.x, echo.icon.y, 'here', tip.here)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- show radar UI 
    radar = function (...)
      local op = {...}
      if btnoptn('radar') then 
        cmd_button(echo.icon.radar, echo.icon.x, echo.icon.y, 'eb ui_radar on', tip.ui_radar)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,
    
    -- show drive UI
    drive  = function (...)
      local op = {...}
      if btnoptn('drive') then 
        cmd_button(echo.icon.drive, echo.icon.x, echo.icon.y, 'eb ui_drive on', tip.ui_drive)
        if op[2] == sl then ImGui.SameLine() end
      end
    end, 
       
    -- show movement UI
    movement = function (...)
      local op = {...}
      if btnoptn('movement') then 
        cmd_button(echo.icon.movement, echo.icon.x, echo.icon.y, 'eb ui_movement on', tip.ui_movement)
        if op[2] == sl then ImGui.SameLine() end
      end
    end,     
    
    -- starts the hud
    hud_start = function (...)
      local op = {...}
      cmd_button(echo.icon.allauto, echo.icon.x, echo.icon.y, 'eb hud on', 'start hud')
      if op[2] == sl then ImGui.SameLine() end
    end, 
    
    -- ends the hud
    hud_end = function (...)
      local op = {...}
      cmd_button(echo.icon.allmanual, echo.icon.x, echo.icon.y, 'eb hud off', 'stop hud')
      if op[2] == sl then ImGui.SameLine() end
    end,        
    
    -- starts the radar
    radar_start = function (...)
      local op = {...}
      cmd_button(echo.icon.allauto, echo.icon.x, echo.icon.y, 'eb ui_radar on', tip.ui_radar_start)
      if op[2] == sl then ImGui.SameLine() end
    end, 
    
    -- ends the hud
    radar_end = function (...)
      local op = {...}
      cmd_button(echo.icon.allmanual, echo.icon.x, echo.icon.y, 'eb ui_radar off', tip.ui_radar_stop)
      if op[2] == sl then ImGui.SameLine() end
    end
  
  }


}








ent = {
  hudadj = tonumber(mq.TLO.Macro.Variable('maHeal').Find('stHealAdjust').Value()) or 0,
  build = mq.TLO.Macro.Variable('maEnv').Find('build').Value() or '--',
  channel = mq.TLO.Macro.Variable('maEntropy').Find('stEntropyGroup_all').Value(),
  -- mode = mq.TLO.Macro.Variable('maData').Find('mode').Value() or mq.TLO.Macro.Variable('maHud').Find('stHUDBlank').Value(),
  mode = mq.TLO.Macro.Variable('maData').Find('mode').Value(),
  set = mq.TLO.Macro.Variable('maEnv').Find('stBuildSetCurrent').Value() or mq.TLO.Macro.Variable('maHud').Find('stHUDBlank').Value(),
  auto = mq.TLO.Macro.Variable('maEnv').Find('swAuto').Value() or '0'
}


function indent (count, pos)
  if pos == 1  then
    if count < 10 then
      ImGui.Indent(16)
    else
      ImGui.Indent(24)
    end
  elseif pos == 3 then
    if count < 10 then
      ImGui.Indent(45)
    else
      ImGui.Indent(53)
    end  
  elseif pos == 4 then   
    if count < 10 then
      ImGui.Indent(-45)
    else
      ImGui.Indent(-53)
    end    
      
  else
    if count < 10 then
      ImGui.Indent(-16)
    else
      ImGui.Indent(-24)
    end
  end
end
 
 -- temporary switch 
function edit_switch_temp (name, map, var)
  local switch, checked = ImGui.Checkbox(name..'##'..var, mq.TLO.Macro.Variable(map).Find(var).Value() == 'TRUE')
  if checked then
    mq.cmd.invoke('${'..map..'.Add['..var..','..(switch and 'TRUE' or 'FALSE')..']}')
  end
end

-- simple switchbox
function edit_switch_perm (name, map, var, tt)
  local switch, checked = ImGui.Checkbox(name..'##'..var, mq.TLO.Macro.Variable(map).Find(var).Value() == 'TRUE')
  if checked then
    mq.cmd.luaedit(var, switch and 'TRUE' or 'FALSE')
  end
  tooltip(false, tt)
end

-- blank checkbox with a command button as the name
function edit_switch_perm_cmd (name, map, var, cmd)
  local switch, checked = ImGui.Checkbox('##'..var, mq.TLO.Macro.Variable(map).Find(var).Value() == 'TRUE')
  if checked then
    mq.cmd.luaedit(var, switch and 'TRUE' or 'FALSE')
  end
  ImGui.SameLine()
  local _button = ImGui.Button(name, 60, 22)
  if _button then
    mq.cmd('/'..cmd)
  end  
  
end


-- edit text variable
function edit_text_perm (name, map, var, tt)
  if mq.TLO.Macro.Variable(map).Find(var).Value() == 'FALSE' then 
    map = '--'
  end
  local line, selected = ImGui.InputTextWithHint(name..'##'..var, tostring(mq.TLO.Macro.Variable(map).Find(var).Value()), '', ImGuiInputTextFlags.EnterReturnsTrue)
  if selected then
    mq.cmd.luaedit(var, '"'..line..'"', 'overwrite')
  end  
  tooltip(false, tt)
end


-- simple button
function cmd_button (name, y, x, cmd, info)
  local cb = ImGui.Button(name, y, x)
  if cb then
    mq.cmd('/'..cmd)
  end
  tooltip(false, info)
end


-- adds current target to a list
function button_add_target (var)
  local cba = ImGui.Button(echo.icon.add..'##add'..var, echo.icon.x, echo.icon.y)
  if cba then
    if mq.TLO.Target.ID() > 0 then
      mq.cmd.edit(var .. " " .. '"' .. mq.TLO.Target.DisplayName() .. '" add')
    end
  end
  if ImGui.IsItemHovered() then
    ImGui.BeginTooltip()
      if mq.TLO.Target.ID() > 0 then
        ImGui.Text('append ' .. mq.TLO.Target.DisplayName())
      else
        ImGui.Text('Requires a Target to add to list')
      end
    ImGui.EndTooltip()
  end   
end


-- removes current target from a list
function button_delete_target (var)
  local cbd = ImGui.Button(echo.icon.subtract..'##remove'..var, echo.icon.x, echo.icon.y)
  if cbd then
    if mq.TLO.Target.ID() > 0 and mq.TLO.Macro.Variable(var).Contains(mq.TLO.Target.DisplayName())() then
      mq.cmd.edit(var .. " " .. '"' .. mq.TLO.Target.DisplayName() .. '" delete')
    end
  end
  if ImGui.IsItemHovered() then
    ImGui.BeginTooltip()
      if mq.TLO.Target.ID() > 0 then
        ImGui.Text('remove ' .. mq.TLO.Target.DisplayName())
      else
        ImGui.Text('Requires a Target to remove from list.')
      end
    ImGui.EndTooltip()
  end    
end


-- edits an existing single list for the button label
function button_edit_list (list, option)

  local button = ImGui.Button(option, 110, 22)

  if option == 'clear' then
    if button then
      mq.cmd.edit(list .. ' ' .. option)
    end
  else
    if button then
      if mq.TLO.Macro.Variable(list).Contains(option)() then
        mq.cmd.edit(list .. ' ' .. option .. ' delete')
      else
        mq.cmd.edit(list .. ' ' .. option .. ' add')
      end
    end  
  end
  
end

-- clears an existing list
function button_clear_list (var)

  local cbc = ImGui.Button(echo.icon.clear..'##clear'..var, echo.icon.x, echo.icon.y)
  if cbc then
    mq.cmd.edit(var .. ' clear')
  end
  tooltip(false, tip.list_clear)
end





function round(num, numDecimalPlaces)
  if num == nil then
    return 0
  end
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end


function isSlowed()
  if mq.TLO.Target.Slowed.ID() == nil then
    return ''
  end
  return 100 - mq.TLO.Target.Slowed.Base(2)()..'%% ('..mq.TLO.Target.BuffDuration(mq.TLO.Target.Slowed()).TotalSeconds()..'s)'
end

-- just return the base % slowed
function isSlowedBase()
  if mq.TLO.Target.Slowed.ID() == nil then
    return ''
  end
  return 100 - mq.TLO.Target.Slowed.Base(2)()..'%'
end


function isTashed()
  if mq.TLO.Target.Tashed.ID() == nil then
    return ''
  end
  return mq.TLO.Target.Tashed.Base(2)()..'ac ('..mq.TLO.Target.BuffDuration(mq.TLO.Target.Tashed()).TotalSeconds()..'s)'
end


function isMaloed()
  if mq.TLO.Target.Maloed.ID() == nil then
    return ''
  end
  return '+'..mq.TLO.Target.Maloed.Base(1)()..'% ('..mq.TLO.Target.BuffDuration(mq.TLO.Target.Maloed()).TotalSeconds()..'s)'
end


function isCrippled()
  if mq.TLO.Target.FindBuff('subcat Disempowering').ID() == nil then
    return ''
  end
  return mq.TLO.Target.FindBuff('subcat Disempowering').Base(4)()..' ('..mq.TLO.Target.BuffDuration(mq.TLO.Target.FindBuff('subcat Disempowering')()).TotalSeconds()..'s)'
end


function isSnared()
  if mq.TLO.Target.Snared.ID() == nil then
    return ''
  end
  return mq.TLO.Target.Snared.Base(2)()..'%% ('..mq.TLO.Target.BuffDuration(mq.TLO.Target.Snared()).TotalSeconds()..'s)'
end


function hasDS ()
  if mq.TLO.Target.DSed.ID() == nil then
    return ''
  end
  return mq.TLO.Target.DSed.Base(2)()..' ('..mq.TLO.Target.BuffDuration(mq.TLO.Target.DSed()).TotalSeconds()..'s)'
end


function hasLoS ()
  if mq.TLO.Target.LineOfSight() == nil then
    return ''
  end
  return mq.TLO.Target.LineOfSight()
end


function sleep (a) 
  local sec = tonumber(os.clock() + a); 
  while (os.clock() < sec) do 
  end 
end


-- check range
rangeCheck = function (targetRange)
  
  return targetRange <= tonumber(mq.TLO.Macro.Variable('maEnv').Find('stEnvRadius').Value())
  -- return memberRange <= math.max(unpack(range))
end



-- return color for text
function color (color, thing_to_color)
  
  if color == 'RED' then
    ImGui.TextColored(1, 0.0, 0.0, 1, thing_to_color)
  elseif color == 'YELLOW' then
    ImGui.TextColored(1, 1, 0.0, 1, thing_to_color)
  elseif color == 'WHITE' then
    ImGui.TextColored(1, 1, 1, 1, thing_to_color)
  elseif color == 'BLUE' then
    ImGui.TextColored(0.0, 0.0, 1, 1, thing_to_color)
  elseif color == 'LIGHT BLUE' then
    ImGui.TextColored(0.50, 0.50, 0.80, 1, thing_to_color)
  elseif color == 'GREEN' then
    ImGui.TextColored(0.0, 1, 0.0, 1, thing_to_color)
  elseif color == 'GREY' then
    ImGui.TextColored(0.50, 0.50, 0.50, 1, thing_to_color)
  elseif color == 'ORANGE' then
    ImGui.TextColored(0.99, 0.65, 0, 1, thing_to_color)
  end
  
end
 
 
 
function btnoptn (name)
  
  if mq.TLO.Macro.Variable('maHud').Find('swHUDBTN'..name..'').Value() == 'TRUE' then 
    return true
  else 
    return false 
  end
  
  
end



function control_movement (...)  
  local op = {...}   
   
  if op[1] == 'stop_all' then   
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

end


function control_casting (...)
  local op = {...}
 
  if op[1] == 'stop_all'then 
    if mq.TLO.Me.Casting.ID() ~= nil then
      mq.cmd.stopcast()
      mq.cmd.stopsong()
    end
  end
  
end


function control_combat (...)
  local op = {...}

  if op[1] == 'stop_all' then 
    control_target(release)    

    if mq.TLO.Me.AutoFire() == true then 
      mq.cmd.squelch('/autofire off')
    end
  
    if mq.TLO.Me.Combat() == true then
      mq.cmd.squelch('/attack off')
    end
  end

  if op[1] == 'stop_melee' then 
    control_target(release)    
    
    if mq.TLO.Me.Combat() == true then
      mq.cmd.squelch('/attack off')
    end
  end
  
  if op[1] == 'stop_range' then 
    control_target(release)    
    
    if mq.TLO.Me.AutoFire() == true then 
      mq.cmd.squelch('/autofire off')
    end
  end

end


function control_pet (...)
  local op = {...}
  
  if op[1] == 'back' then 
    mq.cmd.squelch('/pet as you were')
  end  

  if op[1] == 'attack' then 
    mq.cmd.squelch('/pet kill')
    mq.cmd.squelch('/pet swarm')
    
  end 
  
end
 



function control_target (...)
  local op = {...}

  if op[1] == 'release' then
    mq.cmd.varset('stAssTarID 0')
    mq.cmd.varset('targetData 0')
    mq.cmd.varset('assistData 0')
    mq.cmd.squelch('/target clear')
    mq.cmd.invoke('${maCC.Add[swValidAssTarID,FALSE]}')
    mq.cmd.invoke('${maCC.Add[swSetCombat,FALSE]}')
    mq.cmd.invoke('${maCC.Add[swSetForced,FALSE]}')
    mq.cmd.invoke('${set_data_timer[FALSE, Check_Behind, 0]}')
    mq.cmd.invoke('${maData.Add[stFacingPositionCheck,FALSE]}')
    mq.cmd.invoke('${maData.Add[stPctEngageSet,FALSE]}')
    mq.cmd.invoke('${maData.Add[stPctEngagePetSet,FALSE]}')
    mq.cmd.invoke('${maData.Add[stPctEngageSwarmSet,FALSE]}')
    mq.cmd.invoke('${maData.Add[stPctEngageBurnSet,FALSE]}')
    mq.cmd.pet('back off')
    
  end


end


local printHelp = function (helpArray)
    for _, v in pairs(helpArray) do
        print(string.format('  \ay%s', v))
    end
    mq.cmd.echo('\a-t-------------------------------\ax')
end


function out (...)
  local op = {...}

  -- simple echo response
  if op[1] == 1 then
    print(string.format('\a-t%s\ax', op[2]))
    
  -- help output
  elseif op[1] == 42 then
    print(string.format('\at%s\ax \aw%s\ax', op[2], op[3]))

  -- default 2 strings    
  elseif op[1] == 2 then
    print(string.format('\a-t%s\ax \a-w%s\ax', op[2], op[3]))

  -- default 3 strings    
  elseif op[1] == 3 then
    print(string.format('\a-t%s\ax \a-w%s\ax \a-w%s\ax', op[2], op[3], op[4]))

  -- default move help strings
  elseif op[1] == 'help' then
    print(string.format('\a-t%s\ax'.. echo.out.sep .. ' \aw%s\ax (\a-w%s\ax)', op[2], op[3], op[4]))
  



  -- default 2 strings with an error
  elseif op[1] == 2.1 then
   print(string.format('\a-t%s\ax \a-w%s\ax '.. echo.out.dot ..' \ar%s\ax', op[2], op[3], op[4])) 
  
  -- help response for no tags for the control
  elseif op[1] == 'notag' then
    print('no tags for this control.')

  -- help response for no map for this control
  elseif op[1] == 'nomap' then
    print('no map for this control.')

  end
end



function settableflags ()
  tableFlags = bit32.bor(ImGuiTableFlags.Resizable, ImGuiTableFlags.RowBg, ImGuiTableFlags.SizingFixedFit, ImGuiTableFlags.Borders, ImGuiTableFlags.Hideable) 
end

-- creates the buttons for the xtarget heal list creation for healers.
function class_cycle_list (var)
  
  button_edit_list(var, 'cure')
  ImGui.SameLine()
  button_edit_list(var, 'melee')
  ImGui.SameLine()
  button_edit_list(var, 'heal')
  ImGui.SameLine()
  button_edit_list(var, 'burn')
  ImGui.SameLine()
  button_edit_list(var, 'misc')

  button_edit_list(var, 'dot')
  ImGui.SameLine()
  button_edit_list(var, 'nuke')
  ImGui.SameLine()
  button_edit_list(var, 'debuff')
  ImGui.SameLine()
  button_edit_list(var, 'item')
  ImGui.SameLine()
  button_edit_list(var, 'pet')

  button_edit_list(var, 'swarm')
  ImGui.SameLine()
  button_edit_list(var, 'manarecover')
  ImGui.SameLine()
  button_edit_list(var, 'staminarecover')
  ImGui.SameLine()
  button_edit_list(var, 'checkminion')
  ImGui.SameLine()
  button_edit_list(var, 'xtarget')

  button_edit_list(var, 'agro')
  ImGui.SameLine()
  button_edit_list(var, 'cc')
  ImGui.SameLine()
  button_edit_list(var, 'gather')
  ImGui.SameLine()
  button_edit_list(var, 'mode')
  ImGui.SameLine()
  
  if mq.TLO.Me.Class.ID() == 8 then
    button_edit_list(var, 'pulseic')
    button_edit_list(var, 'miscdps')
  else
    button_edit_list(var, 'miscdps')
  end    


end



-- add / delete / clear buttons for single list variables in /eb
function buttons_adc_target (var)

  -- start add button  
  button_add_target(var) 

  ImGui.SameLine()

  -- start remove button
  button_delete_target (var) 

  ImGui.SameLine()

  -- start clear button
  button_clear_list(var)
 
end


-- gets shorname removing _and beyons (credit dannuic)
function getZoneShortName()
    local zoneName = mq.TLO.Zone.ShortName()
    i = zoneName:find('_')
    if i then
        zoneName = zoneName:sub(1, i - 1)
    end
    return zoneName
end

-- returns the size of a table (credit dannuic)
function getTableSize(t)
    local count = 0
    for _, __ in pairs(t) do
        count = count + 1
    end
    return count
end



