--
-- entropoy.mac
-- eb_tab_about.lua
-- 
-- about tab for builder
--



local mq = require 'mq'



about = {}

  about.build = {


    -- Base DEBUG
    about = function (...)
      local op = {...}
      
        ImGui.NewLine()

          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Written By: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, 'Exspes')        
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Discord: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, 'exspes.')
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Site: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, 'https://entropy.exspes.com/')
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Donate: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, 'paypal.me/exspes')

        ImGui.NewLine()
        ImGui.Separator()
        ImGui.NewLine()

          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Build: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('maEnv').Find('build').Value())        
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Schema: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('maEnv').Find('schema').Value())
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Repo: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('maEnv').Find('repo').Value())
        
        
        ImGui.NewLine()
        ImGui.Separator()
        ImGui.NewLine()
        
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Data Sources ')
          ImGui.NewLine()
          
          
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Character: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('DBcharacter')())
          
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Shared: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('DBshared')())
          

          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Static: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('DBstatic')())
          
          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Nav: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('DBnav')())


          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Loot: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('DBloot')())


          ImGui.TextColored(0.39, 0.58, 0.92, 1, 'Zone: ')
          ImGui.SameLine()
          ImGui.TextColored(1, 1, 1, 1, mq.TLO.Macro.Variable('DBzone')())

    end
    
    
  }
  






