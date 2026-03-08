--
-- entropoy.mac
-- eb_tab_event.lua
-- 
-- event tab for builder
--


local mq = require 'mq'

event = {}

  event.build = {


-- The Outer Brood 31 :: ToB
    event_tob = function (...)
      if ImGui.CollapsingHeader('The Outer Brood 31 :: ToB') then
        ImGui.NewLine() 
  
        if ImGui.TreeNode('Missions') then
          ImGui.NewLine()

          --The Control Room

          --High Priest
          util.button.edityxz(false, 'st31M2NWLocYX')
          ImGui.SameLine()
          edit_text_perm('High Priest: run NW loc (yxz)', 'maEvent', 'st31M2NWLocYX')
          util.button.edityxz(false, 'st31M2SELocYX')
          ImGui.SameLine()
          edit_text_perm('High Priest: run SE loc (yxz)', 'maEvent', 'st31M2SELocYX')

          --Brood Architect Hazuri
          --Leviathan's Heart


          ImGui.NewLine()
          ImGui.TreePop()
          -- ImGui.Indent(-20)
        end

        if ImGui.TreeNode('1.1 Herald of the Outer Brood') then
          ImGui.TreePop()
          ImGui.NewLine()
        end
        
        if ImGui.TreeNode('1.2 Landing') then
          ImGui.NewLine()

          util.button.edityxz(false, 'st31LandingHomeLocYX')
          ImGui.SameLine()
          edit_text_perm('home (yxz)', 'maEvent', 'st31LandingHomeLocYX')

          util.button.addyxz('ls31LandingHideLocYX')
          ImGui.SameLine()
          edit_text_perm('hide list (yxz)', 'maEvent', 'ls31LandingHideLocYX')
   
          ImGui.NewLine()
          ImGui.Separator()
          ImGui.NewLine()
          util.button.edityxz(false, 'st31LandingRedYX')
          ImGui.SameLine()
          edit_text_perm('red aura (yxz)', 'maEvent', 'st31LandingRedYX')

          util.button.edityxz(false, 'st31LandingGreenYX')
          ImGui.SameLine()
          edit_text_perm('green aura (yxz)', 'maEvent', 'st31LandingGreenYX')

          util.button.edityxz(false, 'st31LandingBlueYX')
          ImGui.SameLine()
          edit_text_perm('blue aura (yxz)', 'maEvent', 'st31LandingBlueYX')

          util.button.edityxz(false, 'st31LandingYellowYX')
          ImGui.SameLine()
          edit_text_perm('yellow aura (yxz)', 'maEvent', 'st31LandingYellowYX')

          util.button.edityxz(false, 'st31LandingCenterYX')
          ImGui.SameLine()
          edit_text_perm('center of auras (yxz)', 'maEvent', 'st31LandingCenterYX')

          ImGui.NewLine()
          ImGui.TreePop()
        end

        if ImGui.TreeNode('2.1 Silence the Cannons') then
          ImGui.TreePop()
          ImGui.NewLine()
        end

        if ImGui.TreeNode('2.2 Dock of the Bay') then
          ImGui.TreePop()
          ImGui.NewLine()
        end

        if ImGui.TreeNode('2.3 Brood Architect Hazuri') then
          ImGui.TreePop()
          ImGui.NewLine()
        end

        if ImGui.TreeNode('3.1 The Leviathans Heart') then
          ImGui.TreePop()
          ImGui.NewLine()
        end

        if ImGui.TreeNode('3.2 The Control Room') then
          ImGui.TreePop()
          ImGui.NewLine()
        end

        if ImGui.TreeNode('3.3 The Guilded Spire') then
          ImGui.TreePop()
          ImGui.NewLine()
        end
        
        ImGui.NewLine()
      end
    end,
 
-- Laurions Song 30 :: LS    
    event_ls = function (...)
      if ImGui.CollapsingHeader('Laurions Song 30 :: LS') then
      ImGui.NewLine() 

      -- tier 1
      if ImGui.TreeNode('1.1 Return of the Kanghammer') then
        ImGui.NewLine()
     
        util.button.edityxz(false, 'st30KanghammerHomeLocYX')
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30KanghammerHomeLocYX')

        util.button.addyxz('ls30KanghammerHideLocYX')     
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30KanghammerHideLocYX')
        
        ImGui.NewLine()
        ImGui.TreePop()
      end  

      if ImGui.TreeNode('1.2 Bidils the Quickhand') then
        ImGui.NewLine()
        
        util.button.edityxz(false, 'st30BidilsHomeLocYX')
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30BidilsHomeLocYX')
        
        util.button.addyxz('ls30BidilsHideLocYX')     
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30BidilsHideLocYX')
        
        ImGui.NewLine()

        util.button.edittarget('st30BidilsPassToon1')
        ImGui.SameLine()
        edit_text_perm('Potato Toon 1', 'maEvent', 'st30BidilsPassToon1')
        util.button.edittarget('st30BidilsPassToon2')
        ImGui.SameLine()
        edit_text_perm('Potato Toon 2', 'maEvent', 'st30BidilsPassToon2')
        edit_text_perm('Potato Name', 'maEvent', 'st30BidilsPassItem')

        
        ImGui.NewLine()
        ImGui.TreePop()
      end  

      -- tier 2
      if ImGui.TreeNode('2.1 Shadow of My Shadow') then
        ImGui.NewLine()
        util.button.edityxz(false, 'st30ShadowHomeLocYX')
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30ShadowHomeLocYX')
        util.button.addyxz('ls30ShadowHideLocYX')     
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30ShadowHideLocYX')
        ImGui.NewLine()
        ImGui.TreePop()
      end  

      if ImGui.TreeNode('2.2 The Prisoners of Ankexfen') then
        ImGui.NewLine()
        util.button.edityxz(false, 'st30PrisonersHomeLocYX', sameline)
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30PrisonersHomeLocYX')
        util.button.addyxz('ls30PrisonersHideLocYX')     
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30PrisonersHideLocYX')
        ImGui.NewLine()
        ImGui.TreePop()
      end  

      if ImGui.TreeNode('2.3 What is it For?') then
        ImGui.NewLine()
        util.button.edityxz(false, 'st30WhatHomeLocYX')
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30WhatHomeLocYX')
        util.button.edityxz(false, 'ls30WhatHideLocYX')
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30WhatHideLocYX')

        ImGui.NewLine()
        ImGui.TreePop()
      end 

      -- tier 3
      if ImGui.TreeNode('3.1 The Artisan and the Druid') then
        ImGui.NewLine()

        util.button.edityxz(false, 'st30ArtisanHomeLocYX')
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30ArtisanHomeLocYX')

        util.button.addyxz('ls30ArtisanHideLocYX')
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30ArtisanHideLocYX')
 
 
 
 
        ImGui.NewLine()
        ImGui.Separator()
        ImGui.NewLine()
        util.button.edityxz(false, 'st30Artisan01YX')
        ImGui.SameLine()
        edit_text_perm('spot 1 (yxz)', 'maEvent', 'st30Artisan01YX')

        util.button.edityxz(false, 'st30Artisan02YX')
        ImGui.SameLine()
        edit_text_perm('spot 2 (yxz)', 'maEvent', 'st30Artisan02YX')

        util.button.edityxz(false, 'st30Artisan03YX')
        ImGui.SameLine()
        edit_text_perm('spot 3 (yxz)', 'maEvent', 'st30Artisan03YX')

        util.button.edityxz(false, 'st30Artisan04YX')
        ImGui.SameLine()
        edit_text_perm('spot 4 (yxz)', 'maEvent', 'st30Artisan04YX')

        util.button.edityxz(false, 'st30Artisan05YX')
        ImGui.SameLine()
        edit_text_perm('spot 5 (yxz)', 'maEvent', 'st30Artisan05YX')

        util.button.edityxz(false, 'st30Artisan06YX')
        ImGui.SameLine()
        edit_text_perm('spot 6 (yxz)', 'maEvent', 'st30Artisan06YX')

        util.button.edityxz(false, 'st30Artisan07YX')
        ImGui.SameLine()
        edit_text_perm('spot 7 (yxz)', 'maEvent', 'st30Artisan07YX')

        util.button.edityxz(false, 'st30Artisan08YX')
        ImGui.SameLine()
        edit_text_perm('spot 8 (yxz)', 'maEvent', 'st30Artisan08YX')

        util.button.edityxz(false, 'st30Artisan09YX')
        ImGui.SameLine()
        edit_text_perm('spot 9 (yxz)', 'maEvent', 'st30Artisan09YX')

        
        ImGui.NewLine()
        ImGui.TreePop()
      end  

      if ImGui.TreeNode('3.2 Heroes Are Forged') then
        ImGui.NewLine()
        util.button.edityxz(false, 'st30HeroesHomeLocYX')
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30HeroesHomeLocYX')
        util.button.edityxz(false, 'ls30HeroesHideLocYX')
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30HeroesHideLocYX')
        
        ImGui.NewLine()
        ImGui.TreePop()
      end  

      if ImGui.TreeNode('3.3 Final Fugue') then
        ImGui.NewLine()
        util.button.edityxz(false, 'st30FugeHomeLocYX')
        ImGui.SameLine()
        edit_text_perm('home (yxz)', 'maEvent', 'st30FugeHomeLocYX')
        util.button.edityxz(false, 'ls30FugeHideLocYX')
        ImGui.SameLine()
        edit_text_perm('hide list (yxz)', 'maEvent', 'ls30FugeHideLocYX')

        ImGui.NewLine()
        ImGui.TreePop()
      end

      ImGui.NewLine() 
    end
    end,

-- Nights of Shadow 29 :: NoS  
    event_nos = function (...)
      if ImGui.CollapsingHeader('Nights of Shadow 29 :: NoS') then
        ImGui.NewLine() 


        -- tier 1
       if ImGui.TreeNode('Paludal Depths :: Insatiable Appetite') then
          ImGui.NewLine()
          
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Shar Vahl :: Pit Fight') then
          ImGui.NewLine()
          
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Shar Vahl :: Mean Streets') then
          ImGui.NewLine()
          
          ImGui.TreePop()
        end  


        -- tier 2
        if ImGui.TreeNode('Shadow haven :: When One Door Closes') then
          ImGui.NewLine()
          
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Deepshade :: Mycondi Mutiny') then
          ImGui.NewLine()
          
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Deepshade :: Dance of the Demiurge') then
          ImGui.NewLine()
          edit_text_perm('hide list (yxz)', 'maEvent', 'ls29DeepshadeHideLocYX')
          ImGui.NewLine()        
          ImGui.TreePop()
        end 


        -- tier 3
        if ImGui.TreeNode('Darklight Caverns :: The Spirit Fades') then
          ImGui.NewLine()
          
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Firefall Pass :: The Shadow Moves') then
          ImGui.NewLine()
          edit_text_perm('hide list (yxz)', 'maEvent', 'ls29FirefallSettingHideLocYX')
          ImGui.NewLine()
          
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Shar Vahl :: Under Seige') then
          ImGui.NewLine()
          edit_text_perm('say target', 'maEvent', 'st29UnderSeigeHeartSayTarget')
          edit_text_perm('say phrase', 'maEvent', 'st29UnderSeigeHeartSayPhrase')
          edit_text_perm('home (yxz)', 'maEvent', 'st29UnderSeigeHomeLocYX')
          ImGui.NewLine()
          
          ImGui.TreePop()
        end


        ImGui.NewLine() 
      end
    end,

-- Terror of Luclin 28 :: ToL
    event_tol = function (...)
      if ImGui.CollapsingHeader('Terror of Luclin 28 :: ToL') then
        ImGui.NewLine() 
   
        if ImGui.TreeNode('Vader :: Umbral Plains') then
          ImGui.NewLine()
          edit_text_perm('hide list (yxz)', 'maEvent', 'ls28UmbralHideLocYX')
          ImGui.NewLine()
          edit_text_perm('home (yxz)', 'maEvent', 'st28UmbralHomeLocYX')
          ImGui.NewLine()
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Close the Gates :: Bloodfalls') then
          ImGui.NewLine()
          edit_text_perm('hide list (yxz)', 'maEvent', 'st28BloodfallsHideLocYX')
          ImGui.NewLine()
          edit_text_perm('bugs', 'maEvent', 'st28BloodfallsBuggs')
          edit_text_perm('chased', 'maEvent', 'st28BloodfallsChased')
          edit_text_perm('drowning', 'maEvent', 'st28BloodfallsDrowning')
          edit_text_perm('falling', 'maEvent', 'st28BloodfallsFalling')
          edit_text_perm('monster', 'maEvent', 'st28BloodfallsMonster')
          edit_text_perm('curse', 'maEvent', 'st28BloodfallsCurse')
          ImGui.NewLine()
          ImGui.TreePop()
        end  

        if ImGui.TreeNode('Gorgana :: Maidens Eye') then
          ImGui.NewLine()
          edit_text_perm('hide list (yxz)', 'maEvent', 'ls28MaidenHideLocYX')
          edit_text_perm('aura', 'maEvent', 'st28MaidenAura')
          ImGui.NewLine()
          ImGui.TreePop()
        end

        if ImGui.TreeNode('Sexy Bitch :: Vex Thal') then
          ImGui.NewLine()
          edit_text_perm('hide list (yxz)', 'maEvent', 'st28AetnHideLocYX')
          ImGui.NewLine()
          ImGui.TreePop()
        end  


        if ImGui.TreeNode('Ghost and Golems and Thingies :: Oubliette') then
          ImGui.NewLine()
          --edit_text_perm('hide list (yxz)', 'maEvent', 'ls28OublietteHideLocYX')
          edit_text_perm('aura', 'maEvent', 'st28OublietteAura')
          ImGui.NewLine()
          ImGui.TreePop()
        end



        ImGui.NewLine() 
      end
    end,

-- Claws of Veeshan 27 :: CoV
    event_cov = function (...)
      if ImGui.CollapsingHeader('Claws of Veeshan 27 :: CoV') then
        ImGui.NewLine() 
      end
    end,

-- Torment of Velious 26 :: ToV
    event_tov = function (...)
      if ImGui.CollapsingHeader('Torment of Velious 26 :: ToV') then
        ImGui.NewLine() 
      end
    end,

-- The Burning Lands 25 :: TBL
    event_tbl = function (...)
      if ImGui.CollapsingHeader('The Burning Lands 25 :: TBL') then
        ImGui.NewLine() 

        if ImGui.TreeNode('The Stone Demise :: Unfettered Emerald Excellence (Mearatas)') then
          ImGui.NewLine()
          util.button.edityxz(false, 'st25MearatasHideAnimationLocYX')
          ImGui.SameLine()
          edit_text_perm('Move: Animation (yxz)', 'maEvent', 'st25MearatasHideAnimationLocYX')

          util.button.edityxz(false, 'st25MearatasHideBreezesLocYX')
          ImGui.SameLine()
          edit_text_perm('Move: Breezes (yxz)', 'maEvent', 'st25MearatasHideBreezesLocYX')

          util.button.edityxz(false, 'st25MearatasHideFlameLocYX')
          ImGui.SameLine()
          edit_text_perm('Move: Flame (yxz)', 'maEvent', 'st25MearatasHideFlameLocYX')

          util.button.edityxz(false, 'st25MearatasHideStoneLocYX')
          ImGui.SameLine()
          edit_text_perm('Move: Stone (yxz)', 'maEvent', 'st25MearatasHideStoneLocYX')

          util.button.edityxz(false, 'st25MearatasHideWavesLocYX')
          ImGui.SameLine()
          edit_text_perm('Move: Waves (yxz)', 'maEvent', 'st25MearatasHideWavesLocYX')

          util.button.edityxz(false, 'st25MearatasHomeLocYX')
          ImGui.SameLine()
          edit_text_perm('home (yxz)', 'maEvent', 'st25MearatasHomeLocYX')

          ImGui.NewLine()
          
          ImGui.TreePop()
        end

        ImGui.NewLine() 
      end
    end,

-- Ring of Scale 24 :: ROS
    event_ros = function (...)
      if ImGui.CollapsingHeader('Ring of Scale 24 :: ROS') then
        ImGui.NewLine() 
      end
    end,

-- Empires of Kunark 23 :: EOK
    event_eok = function (...)
      if ImGui.CollapsingHeader('Empires of Kunark 23 :: EOK') then
        ImGui.NewLine() 
      end
    end,

-- The Broken Mirror 22 :: TBM
    event_tbm = function (...)
      if ImGui.CollapsingHeader('The Broken Mirror 22 :: TBM') then
        ImGui.NewLine() 
      end
    end,

-- The Darkened Sea 21 :: TDS
    event_tds = function (...)
      if ImGui.CollapsingHeader('The Darkened Sea 21 :: TDS') then
        ImGui.NewLine() 
      end
    end,

-- Call of the Forsaken 20 :: CoTF
    event_cotf = function (...)
      if ImGui.CollapsingHeader('Call of the Forsaken 20 :: CoTF') then
        ImGui.NewLine() 
      end
    end,

-- Rain of Fear 19 :: RoF
    event_rof = function (...)
      if ImGui.CollapsingHeader('Rain of Fear 19 :: RoF') then
        ImGui.NewLine() 
      end
    end,

-- Veil of Alaris 18 :: VoA
    event_voa = function (...)
      if ImGui.CollapsingHeader('Veil of Alaris 18 :: VoA') then
        ImGui.NewLine() 
      end
    end,

-- House of Thule 17 :: HoT
    event_hot = function (...)
      if ImGui.CollapsingHeader('House of Thule 17 :: HoT') then
        ImGui.NewLine() 
      end
    end,

-- Underfoot 16 :: UF
    event_uf = function (...)
      if ImGui.CollapsingHeader('Underfoot 16 :: UF') then
        ImGui.NewLine() 
      end
    end,

-- Seeds of Destruction 15 :: SoD
    event_sod = function (...)
      if ImGui.CollapsingHeader('Seeds of Destruction 15 :: SoD') then
        ImGui.NewLine() 
      end
    end,

-- Secrets of Faydwer 14 :: SoF
    event_sof = function (...)
      if ImGui.CollapsingHeader('Secrets of Faydwer 14 :: SoF') then
        ImGui.NewLine() 
      end
    end,

-- The Buried Sea 13 :: TBS
    event_tbs = function (...)
      if ImGui.CollapsingHeader('The Buried Sea 13 :: TBS') then
        ImGui.NewLine() 
      end
    end,

-- The Serpents Spine 12 :: SS
    event_ss = function (...)
      if ImGui.CollapsingHeader('The Serpents Spine 12 :: SS') then
        ImGui.NewLine() 
      end
    end,

-- Prophecy of Ro 11 :: PoR
    event_por = function (...)
      if ImGui.CollapsingHeader('Prophecy of Ro 11 :: PoR') then
        ImGui.NewLine() 
      end
    end,

-- Depths of Darkhollow 10 :: DoD
    event_dod = function (...)
      if ImGui.CollapsingHeader('Depths of Darkhollow 10 :: DoD') then
        ImGui.NewLine() 
      end
    end,

-- Dragons of Norrath 9 :: DoN
    event_don = function (...)
      if ImGui.CollapsingHeader('Dragons of Norrath 9 :: DoN') then
        ImGui.NewLine() 
      end
    end,

-- Omens of War 8 :: OOW
    event_oow = function (...)
      if ImGui.CollapsingHeader('Omens of War 8 :: OOW') then
        ImGui.NewLine() 
      end
    end,

-- Gates of Discord 7 :: GoD
    event_god = function (...)
      if ImGui.CollapsingHeader('Gates of Discord 7 :: GoD') then
        ImGui.NewLine() 
      end
    end,

-- Lost Dungeons of Norrath 6 :: LDoN
    event_ldon = function (...)
      if ImGui.CollapsingHeader('Lost Dungeons of Norrath 6 :: LDoN') then
        ImGui.NewLine() 
      end
    end,

-- The Legacy of Ykesha 5 :: LoY
    event_loy = function (...)
      if ImGui.CollapsingHeader('The Legacy of Ykesha 5 :: LoY') then
        ImGui.NewLine() 
      end
    end,

-- The Planes of Power 4 :: PoP
    event_pop = function (...)
      if ImGui.CollapsingHeader('The Planes of Power 4 :: PoP') then
        ImGui.NewLine() 
      end
    end,

-- The Shadows of Luclin 3 :: SoL
    event_sol = function (...)
      if ImGui.CollapsingHeader('The Shadows of Luclin 3 :: SoL') then
        ImGui.NewLine() 
      end
    end,

-- The Scars of Velious 2 :: SoV
    event_sov = function (...)
      if ImGui.CollapsingHeader('The Scars of Velious 2 :: SoV') then
        ImGui.NewLine() 
      end
    end,

-- The Ruins of Kunark 1 :: RoK
    event_rok = function (...)
      if ImGui.CollapsingHeader('The Ruins of Kunark 1 :: RoK') then
        ImGui.NewLine() 
      end
    end,

-- Anniversary   
    event_anni = function (...)
      if ImGui.CollapsingHeader('Anniversary') then
        ImGui.NewLine()

        if ImGui.TreeNode('Mad Emperor :: Karnor Anniversary Event') then
          edit_text_perm('hide list (yxz)', 'maEvent', 'stKarnorHideLocYX')
          ImGui.NewLine()
          ImGui.TreePop()
        end  
        ImGui.NewLine()


      end
    end
    
  }
       
 
  event.buttons = {
    
    -- base functions for raid tab in the hud
    basic = function (...)
      local op = {...}
    
      cmd_button(echo.icon.banner, echo.icon.x, echo.icon.y, 'event banner', 'move to banner')
      ImGui.SameLine()
      cmd_button(echo.icon.campfire, echo.icon.x, echo.icon.y, 'event campfire', 'move to campfire')
      ImGui.SameLine()
      cmd_button(echo.icon.hide, echo.icon.x, echo.icon.y, 'event hide', 'hide from emote')
      cmd_button(echo.icon.aura, echo.icon.x, echo.icon.y, 'event aura', 'move to aura')
      ImGui.SameLine()
      cmd_button(echo.icon.cure, echo.icon.x, echo.icon.y, 'event cure', 'cure self')
      ImGui.SameLine()
      cmd_button(echo.icon.home, echo.icon.x, echo.icon.y, 'event home', 'move to home marker')
      cmd_button(echo.icon.say, echo.icon.x, echo.icon.y, 'event say', 'move to and speak')  
    end,

    -- raid tab in the hud    
    hud_tab_raid = function (...)

    
    end

    

  }



 



