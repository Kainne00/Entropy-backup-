--
-- entropoy.mac
-- eb_tab_control.lua
-- 
-- control tab for builder
--

local mq = require 'mq'
require 'common'


local classOptions = function ()
  
  -- Warrior
  if mq.TLO.Me.Class.ID() == 1 then
  end    
  
  -- Cleric
  if mq.TLO.Me.Class.ID() == 2 then

    if ImGui.TreeNode('arbitration') then    
      edit.linetext('divine arbitration (AA)', 'maChr', 'stAADivineArbitration', nil, {sb=true, rb=false, list=false}) 
      ImGui.Columns(2, 'arb', false)
        edit.switchbox('use epic', 'maChr', 'swArbitrateEpic', nil)
      ImGui.NextColumn()
        edit.linetext('count', 'maChr', 'stCountArbitrate', nil, {sb=false, rb=false, list=false})
        edit.linetext('pause', 'maChr', 'stArbitratePause', nil, {sb=false, rb=false, list=false})
      ImGui.Columns()    
      ImGui.NewLine()   
      ImGui.TreePop()  
    end

    if ImGui.TreeNode('issuance') then    
      ImGui.Columns(2, 'issue', false)
        edit.linetext('mob count', 'maChr', 'stCountIssuance', nil, {sb=false, rb=false, list=false})
        edit.switchbox('use Force Rejuv AA', 'maChr', 'swUseForceRejuvonIssue', nil)
      ImGui.NextColumn()
        edit.linetext('spell', 'maChr', 'stIssuance', nil, {sb=false, rb=false, list=false})
      ImGui.Columns()    

      ImGui.TreePop()  
    end

    ImGui.NewLine() 
    ImGui.Columns(2, 'class', false)
      edit.linetext('vp', 'maChr', 'stPctVP', nil, {sb=false, rb=false, list=false})
      edit.switchbox('use group hots', 'maHeal', 'swHealGroupOverTime', nil)
      edit.switchbox('use celestial regen', 'maChr', 'swCelestialRegen', nil)
      edit.switchbox('splash me only', 'maHeal', 'swSplashMeOnly', nil)
    ImGui.NextColumn()
      edit.linetext('beacon', 'maChr', 'stCountBeaconofLife', nil, {sb=false, rb=false, list=false})
      edit.switchbox('divine rez clerics', 'maRez', 'swDivineCleric', nil)
      edit.switchbox('attempt forced twinheal', 'maHeal', 'swTwinHeal', nil)
    ImGui.Columns()     
    ImGui.NewLine() 
    edit.linetext('% to use VP', 'maChr', 'stPctVP', nil, {sb=false, rb=false, list=false})
    edit.linetext('# to splash', 'maHeal', 'stCountSplash', nil, {sb=false, rb=false, list=false})
    edit.linetext('# hurt to use beacon', 'maChr', 'stCountBeaconofLife', nil, {sb=false, rb=false, list=false})
    ImGui.NewLine()   
    edit.linetext('hammer spell (prmary)', 'maChr', 'stSummonPrimary', nil, {sb=true, rb=false, list=false})
    edit.switchbox('', 'maMinion', 'swSwarm', nil)
    ImGui.SameLine()
    edit.linetext('swarm pet hammer', 'maChr', 'stTempPet', nil, {sb=false, rb=false, list=false})
    ImGui.NewLine()   

 
    edit.linetext('yaulp (AA/spell/item)', 'maChr', 'stYaulp', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('divine resurrection (AA)', 'maRez', 'stAADivineResurrection', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('beacon of life (AA)', 'maChr', 'stAABeaconofLife', nil, {sb=true, rb=false, list=false})   
    edit.linetext('celestial regeneration (AA)', 'maChr', 'stAACelestialRegeneration', nil, {sb=true, rb=false, list=false})   
    edit.linetext('focused celestial regeneration (AA)', 'maChr', 'stAAFocusedCelestialRegeneration', nil, {sb=true, rb=false, list=false})   
    edit.linetext('burst of life (AA)', 'maChr', 'stAABurstofLife', nil, {sb=true, rb=false, list=false})  
    edit.linetext('forceful rejuvenation (AA)', 'maChr', 'stAAForcefulRejuvenation', nil, {sb=true, rb=false, list=false})   
    edit.linetext('channeling the divine (AA)', 'maChr', 'stAAChannelingtheDivine', nil, {sb=true, rb=false, list=false})   
    edit.linetext('divine retribution (AA)', 'maChr', 'stAADivineRetribution', nil, {sb=true, rb=false, list=false})   
    edit.linetext('silent casting (AA)', 'maChr', 'stAASilentCasting', nil, {sb=true, rb=false, list=false})   
    edit.linetext('healing frenzy (AA)', 'maChr', 'stAAHealingFrenzy', nil, {sb=true, rb=false, list=false})   
    edit.linetext('flurry of life (AA)', 'maChr', 'stAAFlurryofLife', nil, {sb=true, rb=false, list=false})    
    edit.linetext('exquisite benediction (AA)', 'maChr', 'stAAExquisiteBenediction', nil, {sb=true, rb=false, list=false})    
    edit.linetext('battle frenzy (AA)', 'maChr', 'stAABattleFrenzy', nil, {sb=true, rb=false, list=false})   
    edit.linetext('celestial rapidity (AA)', 'maChr', 'stAACelestialRapidity', nil, {sb=true, rb=false, list=false})    
    edit.linetext('turn undead (AA)', 'maChr',  'stAATurnUndead', nil, {sb=true, rb=false, list=false})  
    edit.linetext('celestial hammer (AA)', 'maChr', 'stAACelestialHammer', nil, {sb=true, rb=false, list=false})  
    edit.linetext('veturikas verseverance (AA)', 'maChr', 'stAAVeturikasPerseverance', nil, {sb=true, rb=false, list=false})  
    edit.linetext('quiet prayer (AA)', 'maChr', 'stAAQuietPrayer', nil, {sb=true, rb=false, list=false})   
    edit.linetext('sanctuary (AA)', 'maChr', 'stAASanctuary', nil, {sb=true, rb=false, list=false})

  end

  -- Paladin
  if mq.TLO.Me.Class.ID() == 3 then

    if ImGui.TreeNode('mars gift') then    
      ImGui.Columns(2, 'mg', false)
        edit.linetext('Timer: Marrs Gift', 'maTimer', 'tiCheck_Marrs_Gift', nil, {sb=false, rb=false, list=false})
        edit.linetext('% manna to use', 'maChr', 'stPctMG', nil, {sb=false, rb=false, list=false})      
      ImGui.NextColumn()
      ImGui.Columns()    
        edit.linetext('Marrs Gift (AA)', 'maChr', 'stAAMarrsGift', nil, {sb=true, rb=false, list=false})
      ImGui.TreePop()      
      ImGui.NewLine()   
    end   

    if ImGui.TreeNode('stun') then    
      ImGui.Columns(2, '##classlist', false)
        edit.switchbox('', 'maChr', 'swStun', nil)
        ImGui.SameLine()
        edit.selectlist('stun type', 'maChr', 'stStun', { 'Force of Disruption', 'Divine Stun', 'Disruptive Persecution' })
      ImGui.NextColumn()
      ImGui.Columns()  
      ImGui.TreePop()      
      ImGui.NewLine() 
    end   

    if ImGui.TreeNode('yaulp##pally') then    
      ImGui.Columns(2, 'yaulp##pallytree', false)
        edit.linetext('Timer: Yaulp', 'maTimer', 'tiCheck_Yaulp', nil, {sb=false, rb=false, list=false})
      ImGui.NextColumn()
      ImGui.Columns()    
      edit.linetext('yaulp (AA/spell/item)', 'maChr', 'stYaulp', nil, {sb=true, rb=false, list=false})
      ImGui.TreePop()      
    end 
 
    ImGui.NewLine() 
    ImGui.Columns(2, 'with##pallywithstand', false)
      edit.linetext('timer: rune', 'maTimer', 'tiWithstand', tip.tiWithstand, {sb=false, rb=false, list=false})
    ImGui.NextColumn()
    ImGui.Columns()    
    ImGui.NewLine() 

    
    edit.switchbox('', 'maChr', 'swAttraction', nil)
    ImGui.SameLine()
    edit.linetext('Divine Call (AA)', 'maChr', 'stAADivineCall', nil, {sb=false, rb=false, list=false})



    edit.linetext('Armor of the Inquisitor (AA)', 'maChr', 'stAAArmoroftheInquisitor', nil, {sb=true, rb=false, list=false})
    edit.linetext('Group Armor of the Inquisitor (AA)', 'maChr', 'stAAGroupArmoroftheInquisitor', nil, {sb=true, rb=false, list=false})
    edit.linetext('Vanquish the Fallen (AA)', 'maChr', 'stAAVanquishtheFallen', nil, {sb=true, rb=false, list=false})
    edit.linetext('Lay on Hands (AA)', 'maChr', 'stAALayonHands', nil, {sb=true, rb=false, list=false})
    edit.linetext('Gift of Life (AA)', 'maChr', 'stAAGiftofLife', nil, {sb=true, rb=false, list=false})
    edit.linetext('Valorous Rage (AA)', 'maChr', 'stAAValorousRage', nil, {sb=true, rb=false, list=false})
    edit.linetext('Deflection Discipline (AA)', 'maChr', 'stAADeflectionDiscipline', nil, {sb=true, rb=false, list=false})
    edit.linetext('Inquisitors Judgment (AA)', 'maChr', 'stAAInquisitorsJudgmen', nil, {sb=true, rb=false, list=false})
    edit.linetext('Hand of Piety', 'maChr (AA)', 'stAAHandofPiety', nil, {sb=true, rb=false, list=false})
  
  end

  -- Ranger
  if mq.TLO.Me.Class.ID() == 4 then

    if ImGui.TreeNode('summer') then    
      ImGui.Columns(2, 'summer', false)
        edit.linetext('count', 'maChr', 'stCountSummer', nil, {sb=false, rb=false, list=false})
        edit.linetext('timer', 'maTimer', 'tiSummer_Nuke', nil, {sb=false, rb=false, list=false})
        edit.linetext('summer', 'maChr', 'stSummer', nil, {sb=false, rb=false, list=false})
        edit.switchbox('force on named', 'maChr', 'swNamedSummer', nil)
      ImGui.NextColumn()
      ImGui.Columns()    
      ImGui.TreePop()      
      ImGui.NewLine()   
    end 

    ImGui.NewLine()

    edit.linetext('Imbue Ferocity (AA)', 'maChr', 'stAAImbuedFerocity', nil, {sb=true, rb=false, list=false})
    edit.linetext('Empowered Blades (AA)', 'maChr', 'stAAEmpoweredBlades', nil, {sb=true, rb=false, list=false})
    edit.linetext('Outriders Accuracy (AA)', 'maChr', 'stAAOutridersAccuracy', nil, {sb=true, rb=false, list=false})
    edit.linetext('Outriders Attack (AA)', 'maChr', 'stAAOutridersAttack', nil, {sb=true, rb=false, list=false})
    edit.linetext('Group Guardian of the Forest (AA)', 'maChr', 'stAAGroupGuardianoftheForest', nil, {sb=true, rb=false, list=false})
    edit.linetext('Guardian of the Forest (AA)', 'maChr', 'stAAGuardianoftheForest', nil, {sb=true, rb=false, list=false})
    edit.linetext('Pack Hunt (AA)', 'maChr', 'stAAPackHunt', nil, {sb=true, rb=false, list=false})
    edit.linetext('Elemental Arrow (AA)', 'maChr', 'stAAElementalArrow', nil, {sb=true, rb=false, list=false})
    edit.linetext('Auspice of the Hunter (AA)', 'maChr', 'stAAAuspiceoftheHunter', nil, {sb=true, rb=false, list=false})
    edit.linetext('Scarlet Cheetahs Fang (AA)', 'maChr', 'stAAScarletCheetahsFang', nil, {sb=true, rb=false, list=false})
  
    ImGui.NewLine()   
  
    edit.linetext('group heal disc', 'maChr', 'stDiscHeal', nil, {sb=true, rb=false, list=false})
    edit.linetext('ranged DPS disc', 'maChr', 'stDiscRange', nil, {sb=true, rb=false, list=false})
    edit.linetext('melee DPS disc', 'maChr', 'stDiscMelee', nil, {sb=true, rb=false, list=false})
    edit.linetext('hate reduction disc', 'maChr', 'stDiscJolt', nil, {sb=true, rb=false, list=false})
    edit.linetext('hate increase disc', 'maChr', 'stDiscEnrage', nil, {sb=true, rb=false, list=false})
    edit.linetext('ae melee disc', 'maChr', 'stDiscMeleeAE', nil, {sb=true, rb=false, list=false})
    edit.linetext('single melee disc', 'maChr', 'stDiscMeleeSingle', nil, {sb=true, rb=false, list=false})
  end

  -- Shadowknight
  if mq.TLO.Me.Class.ID() == 5 then

    if ImGui.TreeNode('thought leach') then
      edit.linetext('Thought Leech (AA)', 'maChr', 'stAAThoughtLeech', nil, {sb=true, rb=false, list=false})
      edit.linetext('Health % to use Thought Leech', 'maChr', 'stPctAAThoughtLeech', nil, {sb=false, rb=false, list=false})
      ImGui.TreePop()
      ImGui.NewLine()
    end

    if ImGui.TreeNode('voice of thule') then
      edit.linetext('Voice of Thule (AA)', 'maChr', 'stAAVoiceofThule', nil, {sb=true, rb=false, list=false})
      edit.linetext('Timer: Voice of Thule','maTimer', 'tiCheck_VoT', tip.tiCheck_VoT, {sb=false, rb=false, list=false})
      ImGui.TreePop()
    end

    ImGui.NewLine() 
    ImGui.Columns(2, 'with##skwithstand', false)
      edit.linetext('timer: rune', 'maTimer', 'tiWithstand', tip.tiWithstand, {sb=false, rb=false, list=false})
    ImGui.NextColumn()
    ImGui.Columns()    
    ImGui.NewLine()     
    

    edit.linetext('Leech Touch (AA)', 'maChr', 'stAALeechTouch', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('Vicious Bite of Chaos (AA)', 'maChr', 'stAAViciousBiteofChaos', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('Chattering Bones (AA)', 'maChr', 'stAAChatteringBones', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('Projection of Doom (AA)', 'maChr', 'stAAProjectionofDoom', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('Ageless Enmity (AA)', 'maChr', 'stAAAgelessEnmity', nil, {sb=true, rb=false, list=false}) 
    edit.linetext("T`Vyl's Resolve (AA)", 'maChr', 'stAATVylsResolve', nil, {sb=true, rb=false, list=false})  
    edit.linetext('Veil of Darkness (AA)', 'maChr', 'stAAVeilofDarkness', nil, {sb=true, rb=false, list=false})
    edit.linetext('Harm Touch (AA)', 'maChr', 'stAAHarmTouch', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('Scourge Skin (AA)', 'maChr', 'stAAScourgeSkin', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('Visage of Death (AA)', 'maChr', 'stAAVisageofDeath', nil, {sb=true, rb=false, list=false})  
    edit.linetext('Visage of Decay (AA)', 'maChr', 'stAAVisageofDecay', nil, {sb=true, rb=false, list=false}) 
    edit.linetext('Gift of the Quick Spear (AA)', 'maChr', 'stAAGiftoftheQuickSpear', nil, {sb=true, rb=false, list=false})

  end

  -- Druid
  if mq.TLO.Me.Class.ID() == 6 then
  end

  -- Monk
  if mq.TLO.Me.Class.ID() == 7 then
  end

  -- Bard
  if mq.TLO.Me.Class.ID() == 8 then  
  
    if ImGui.TreeNode('swap') then    
      ImGui.NewLine()   
      ImGui.Columns(1, 'swap', false)
        edit_switch_perm('enable swapping instruments', 'maChr', 'swInstrumentSwap')
        edit_text_perm('secondary to return from swap', 'maChr', 'stInstrumentSecondary')
        edit_text_perm('primary to return from swap', 'maChr', 'stInstrumentPrimary')
      ImGui.Columns()    
      ImGui.TreePop()      
      ImGui.NewLine()   
    end 
 
    ImGui.NewLine()   

    edit_switch_perm('sing while out of combat', 'maChr', 'swPulseOOC')
    ImGui.NewLine()   

    edit_switch_perm('enable song while resting', 'maChr', 'swSongRest')
    edit_text_perm('song to use while group resting', 'maChr', 'stSongRest')

    ImGui.NewLine()   

    edit_switch_perm('enable/disable using Vainglorious', 'maChr', 'swVainglorious')
    edit_text_perm('spam pet song', 'maChr', 'stNukeServant')
    edit_text_perm('remaining duration on a song to refresh. in seconds', 'maChr', 'stSongRefresh')
    edit_text_perm('min mez time in seconds left to remez', 'maChr', 'streMezTime')
    edit_text_perm('Reflexive Disc', 'maChr', 'stReflexive')
    edit_text_perm('Thousand Blades', 'maChr', 'stThousandBlades')
    edit_text_perm('Fierce Eye (AA)', 'maChr', 'stAAFierceEye')
    edit_text_perm('Bladed Song (AA)', 'maChr', 'stAABladedSong')
    edit_text_perm('Cacophony (AA)', 'maChr', 'stAACacophony')

    edit_switch_perm('enable/disable using AA Boastful Bellow', 'maChr', 'swAABellow')
    edit_text_perm('Boastful Bellow (AA)', 'maChr', 'stAABoastfulBellow')

    edit_text_perm('Lyrical Prankster (AA)', 'maChr', 'stAALyricalPrankster')
    edit_text_perm('Song of Stone (AA)', ' maChr', 'stAASongofStone')
    edit_text_perm('Rallying Solo (AA)', 'maChr', 'stAARallyingSolo')
    edit_text_perm('Funeral Dirge (AA)', 'maChr', 'stAAFuneralDirge')
    edit_text_perm('Quick Time (AA)', 'maChr', 'stAAQuickTime')
    edit_text_perm('Frenzied Kicks (AA)', 'maChr', 'stAAFrenziedKicks')
    edit_text_perm('Selos Sonata (AA)', 'maChr', 'stAASelosSonata')
    edit_text_perm('Shauris Sonorous Clouding (AA)', 'maChr', 'stAAShaurisSonorousClouding')
    edit_text_perm('Flurry of Notes (AA)', 'maChr', 'stAAFlurryofNotes')
    edit_text_perm('Dance of Blades (AA)', 'maChr', 'stAADanceofBlades')
    edit_text_perm('Vainglorious Shout (AA)', 'maChr', 'stAAVaingloriousShout')
  end

  -- Rogue
  if mq.TLO.Me.Class.ID() == 9 then

    edit.switchbox('turn off sneaking while /tie is active', 'maChr', 'swNoSneakinTie') 
    edit.linetext('summon leg poisons to keep', 'maChr', 'stLegPoison', nil, {sb=false, rb=false, list=false})
    
    ImGui.NewLine() 
    
    edit.linetext('Blinding Flash', 'maChr', 'stBlinding', nil, {sb=true, rb=false, list=false})
    edit.linetext('Twisted Shank (AA)', 'maChr', 'stAATwistedShank', nil, {sb=true, rb=false, list=false})
    edit.linetext('Shadows Flanking (AA)', 'maChr', 'stAAShadowsFlanking', nil, {sb=true, rb=false, list=false})
    edit.linetext('Focused Rakes Rampage (AA)', 'maChr', 'stAAFocusedRakesRampage', nil, {sb=true, rb=false, list=false})
    edit.linetext('Rakes Rampage (AA)', 'maChr', 'stAARakesRampage', nil, {sb=true, rb=false, list=false})
    edit.linetext('Rogues Fury (AA)', 'maChr', 'stAARoguesFury', nil, {sb=true, rb=false, list=false})
    edit.linetext('Tumble (AA)', 'maChr', 'stAATumble', nil, {sb=true, rb=false, list=false})
    edit.linetext('Dichotomic', 'maChr', 'stDichotomic', nil, {sb=true, rb=false, list=false})
    edit.linetext('Misdirection', 'maChr', 'stAggro', nil, {sb=true, rb=false, list=false})
    edit.linetext('Assault', 'maChr', 'stAssault', nil, {sb=true, rb=false, list=false})
    edit.linetext('Bleed', 'maChr', 'stBleed', nil, {sb=true, rb=false, list=false})
    edit.linetext('Knifeplay', 'maChr', 'stPlay', nil, {sb=true, rb=false, list=false})
    edit.linetext('Phantom Assassin', 'maChr', 'stPhantom', nil, {sb=true, rb=false, list=false})
    edit.linetext('Jugular Slash', 'maChr', 'stHack', nil, {sb=true, rb=false, list=false})
    edit.linetext('Hidden Blade', 'maChr', 'stHiddenBlade', nil, {sb=true, rb=false, list=false})
    edit.linetext('Toxic Blade', 'maChr', 'stBladePoison', nil, {sb=true, rb=false, list=false})
    edit.linetext('Sneak Attack', 'maChr', 'stSneakAttack', nil, {sb=true, rb=false, list=false})
    edit.linetext('Shadow-Hunters Dagger', 'maChr', 'stShadowHunter', nil, {sb=true, rb=false, list=false})
    edit.linetext('Disassociative Puncture', 'maChr', 'stDisassociative', nil, {sb=true, rb=false, list=false})
    edit.linetext('Aspbleeder', 'maChr', 'stAspBleeder', nil, {sb=true, rb=false, list=false})
    edit.linetext('Pinpoint Vulnerability', 'maChr', 'stPinPoint', nil, {sb=true, rb=false, list=false})
    edit.linetext('Easy Mark', 'maChr', 'stMark', nil, {sb=true, rb=false, list=false})
    edit.linetext('Duelist', 'maChr', 'stEradicator', nil, {sb=true, rb=false, list=false})
    edit.linetext('Razors Edge', 'maChr', 'stRazor', nil, {sb=true, rb=false, list=false})
    edit.linetext('Frenzied Stabbing', 'maChr', 'stFrenzy', nil, {sb=true, rb=false, list=false})
    edit.linetext('Twisted Chance', 'maChr', 'stTwistedChance', nil, {sb=true, rb=false, list=false})
    edit.linetext('Thiefs Eyes', 'maChr', 'stVision', nil, {sb=true, rb=false, list=false})    

  end

  -- Shaman
  if mq.TLO.Me.Class.ID() == 10 then
  end

  -- Necromancer
  if mq.TLO.Me.Class.ID() == 11 then
  end

  --
  if mq.TLO.Me.Class.ID() == 12 then
  end

  -- Magician
  if mq.TLO.Me.Class.ID() == 13 then

    if ImGui.TreeNode('CoH##magecoh') then    
      ImGui.NewLine()   
      ImGui.Columns(2, 'CoH', false)
        edit.linetext('single', 'maChr', 'stCoH', nil, {sb=false, rb=false, list=false})
        edit.linetext('group', 'maChr', 'stCoHGroup', nil, {sb=false, rb=false, list=false})
      ImGui.NextColumn()
      ImGui.Columns()    
      ImGui.TreePop()  
      ImGui.NewLine()   
    end

    if ImGui.TreeNode('minion##mageminion') then    
      
      
      
          ImGui.Columns(2, 'minioncol##mage', false)
            edit.switchbox('use pet', 'maMinion', 'swPet', tip.swPet)
            edit.switchbox('buff pet', 'maMinion', 'swPetBuff', tip.swPetBuff)
            edit.switchbox('shrink', 'maMinion', 'swPetShrink', tip.swPetShrink)
            edit.switchbox('use swarm', 'maMinion', 'swSwarm', tip.swSwarm)
            edit.switchbox('no swarm on ds', 'maMinion', 'swNoSwarmonDS', tip.swNoSwarmonDS)
            edit.switchbox('on cc force', 'maMinion', 'swonForce', tip.swonForce)
            edit.switchbox('use pet gear', 'maMinion', 'swUsePetGear', tip.swUsePetGear)

          ImGui.NextColumn()
            edit.linetext('% to send pet', 'maMinion', 'stPctPetEngage', tip.stPctPetEngage, {sb=false, rb=false, list=false})
            edit.linetext('illusion', 'maMinion', 'stPetIllusion', tip.stPetIllusion, {sb=false, rb=false, list=false})
            edit.linetext('shrink item', 'maMinion', 'stPetShrink', tip.stPetShrink, {sb=false, rb=false, list=false})
            edit.linetext('% to send swarm', 'maMinion', 'stPctSwarmEngage', tip.stPctSwarmEngage, {sb=false, rb=false, list=false})
            edit.linetext('weapons', 'maMinion', 'stPetWeapon', tip.stPetWeapon, {sb=false, rb=false, list=false})
   
            if mq.TLO.Me.Class.ShortName() == 'MAG' then
              edit.selectlist('pet type', 'maChr', 'stMinionElementType', { 'Air', 'Earth', 'Fire', 'Water' })

            end
          
          ImGui.Columns()      
      
     
      ImGui.Columns(2, 'minion##mage', false)
        --edit.selectlist('pet type', 'maChr', 'stMinionElementType', { 'Air', 'Earth', 'Fire', 'Water' })
      ImGui.NextColumn()
      ImGui.Columns()    
        edit.switchbox('', 'maMinion', 'swSwarm', nil)
        ImGui.SameLine()
        edit.linetext('Rampage Pet', 'maChr', 'stNukeServant', nil, {sb=false, rb=false, list=false})
        edit.linetext('Host of the Elements (AA)', 'maChr', 'stAAHostoftheElements', nil, {sb=true, rb=false, list=false})
        edit.linetext('Servant of Ro (AA)', 'maChr', 'stAAServantofRo', nil, {sb=true, rb=false, list=false})
      ImGui.TreePop()  
      ImGui.NewLine()   
    end

    if ImGui.TreeNode('gather##magemeth') then   
      ImGui.Columns(2, 'gather##mage', false)
        edit.linetext('percent to gather', 'maChr', 'stPctGather', nil, {sb=false, rb=false, list=false})
        edit.linetext('gather spell', 'maChr', 'stGather', nil, {sb=false, rb=false, list=false})
      ImGui.NextColumn()
      ImGui.Columns()    
      edit.linetext('Elemental Conversion (AA)', 'maChr', 'stAAElementalConversion', nil, {sb=true, rb=false, list=false})
      edit.linetext('Self Mod Rod', 'maChr', 'stSelfRod', nil, {sb=true, rb=false, list=false})
      ImGui.TreePop()
      ImGui.NewLine() 
    end
    
    if ImGui.TreeNode('cauldron##magehooka') then    
      ImGui.Columns(2, 'cauldron##mage', false)
        edit.linetext('timer', 'maTimer', 'tiCheck_Cauldron', nil, {sb=false, rb=false, list=false}) 
      ImGui.NextColumn()
      ImGui.Columns()    
      edit.linetext('name', 'maChr', 'stCauldron', nil, {sb=true, rb=false, list=false}) 
      ImGui.NewLine() 
      ImGui.TreePop()
    end
    
    if ImGui.TreeNode('summon dps clickies') then    
      edit.linetext('ice clickie spell', 'maChr', 'stIcebound', nil, {sb=true, rb=false, list=false}) 
      edit.linetext('fire clickie spell', 'maChr', 'stFirebound', nil, {sb=true, rb=false, list=false}) 
      ImGui.TreePop()
    end
    ImGui.NewLine()       

    edit.linetext('Twincast Spell', 'maChr', 'stTC', nil, {sb=false, rb=false, list=false})
    edit.linetext('Dichotomic', 'maChr', 'stDichotomic', nil, {sb=false, rb=false, list=false})

    ImGui.NewLine()       

    edit.linetext('Improved Twincast (AA)', 'maChr', 'stAAImprovedTwincast', nil, {sb=true, rb=false, list=false})
    edit.linetext('Force of Elements (AA)', 'maChr', 'stAAForceofElements', nil, {sb=true, rb=false, list=false})
    edit.linetext('Mend Companion (AA)', 'maChr', 'stAAMendCompanion', nil, {sb=true, rb=false, list=false})
    edit.linetext('Focus of Arcanum (AA)', 'maChr', 'stAAFocusofArcanum', nil, {sb=true, rb=false, list=false})
    edit.linetext('Thaumaturges Focus (AA)', 'maChr', 'stAAThaumaturgesFocus', nil, {sb=true, rb=false, list=false})
    edit.linetext('Silent Casting (AA)', 'maChr', 'stAASilentCasting', nil, {sb=true, rb=false, list=false})
    edit.linetext('Heart of Skyfire (AA)', 'maChr', 'stAAHeartofSkyfire', nil, {sb=true, rb=false, list=false})
    edit.linetext('Companions Fury (AA)', 'maChr', 'stAACompanionsFury', nil, {sb=true, rb=false, list=false})
    edit.linetext('Forceful Rejuvenation (AA)', 'maChr', 'stAAForcefulRejuvenation', nil, {sb=true, rb=false, list=false})
    edit.linetext('Host in the Shell (AA)', 'maChr', 'stAAHostintheShell', nil, {sb=true, rb=false, list=false})

  end
  
  -- Enchanter
  if mq.TLO.Me.Class.ID() == 14 then
    if ImGui.TreeNode('crystals##encbaubles') then    
      ImGui.NewLine()   
      ImGui.Columns(2, 'crystals', false)
        edit.linetext('timer', 'maTimer', 'tiCheck_Crystals', nil, {sb=false, rb=false, list=false})
        edit.switchbox('summon hp/mana crystals', 'maChr', 'swAACrystals', nil)
      ImGui.NextColumn()
        edit.linetext('Azure', 'maChr', 'stAAAzureMindCrystal', nil, {sb=false, rb=false, list=false})
        edit.linetext('Sanguine', 'maChr', 'stAASanguineMindCrystal', nil, {sb=false, rb=false, list=false})
      ImGui.Columns()    
      ImGui.TreePop()  
    end
    ImGui.NewLine()   
    ImGui.Columns(2, 'class##wtfisthis', false)
      edit.switchbox('use beam of slumber', 'maChr', 'swAABoS', nil)
    ImGui.NextColumn()
      edit.linetext('Beam of Slumber', 'maChr', 'stAABeamofSlumber', nil, {sb=false, rb=false, list=false})
    ImGui.Columns()     
    ImGui.NewLine()   
    edit.linetext('point blank ae stun', 'maChr', 'stAEStun', nil, {sb=false, rb=false, list=false})
    edit.linetext('time in seconds to check remez', 'maChr', 'streMezTime', nil, {sb=false, rb=false, list=false})
    ImGui.NewLine()   
    edit_text_perm('Phantasmal Opponent', 'maChr', 'stAAPhantasmalOpponent', nil, {sb=false, rb=false, list=false})
    edit.linetext('Chromatic Haze', 'maChr', 'stAAChromaticHaze', nil, {sb=false, rb=false, list=false})
    edit.linetext('Gather Mana', 'maChr', 'stAAGatherMana', nil, {sb=false, rb=false, list=false})
    edit.linetext('Illusions of Grandeur', 'maChr', 'stAAIllusionsofGrandeur', nil, {sb=false, rb=false, list=false})
    edit.linetext('Focus of Arcanum', 'maChr', 'stAAFocusofArcanum', nil, {sb=false, rb=false, list=false})
    edit.linetext('Dimensional Shield', 'maChr', 'stAADimensionalShield', nil, {sb=false, rb=false, list=false})
    edit.linetext('Silent Casting', 'maChr', 'stAASilentCasting', nil, {sb=false, rb=false, list=false})
    edit.linetext('Improved Twincast', 'maChr', 'stAAImprovedTwincast', nil, {sb=false, rb=false, list=false})
    edit.linetext('Mental Contortion', 'maChr', 'stAAMentalContortion', nil, {sb=false, rb=false, list=false})
    edit.linetext('Doppelganger', 'maChr', 'stAADoppelganger', nil, {sb=false, rb=false, list=false})
    edit.linetext('Calculated Insanity', 'maChr', 'stAACalculatedInsanity', nil, {sb=false, rb=false, list=false})
    edit.linetext('class aa unity', 'maChr', 'stAAUnity', nil, {sb=false, rb=false, list=false})
  end

  -- Beastlord
  if mq.TLO.Me.Class.ID() == 15 then

    if ImGui.TreeNode('roar of thunder') then    
      ImGui.Columns(2, 'rot#bstroar', false)
        edit.linetext('% hate to use', 'maChr', 'stAARoarofThunderPct', nil, {sb=false, rb=false, list=false})
      ImGui.NextColumn()
      ImGui.Columns()    
      edit.linetext('Roar of Thunder (AA)', 'maChr', 'stAARoarofThunder', nil, {sb=true, rb=false, list=false})
      ImGui.TreePop()      
      ImGui.NewLine()   
    end   

    if ImGui.TreeNode('minion') then  
      edit_switch_perm('', 'maMinion', 'swSwarm')  
      ImGui.SameLine()    
      edit_text_perm('Spam Rampage Pet', 'maChr', 'stNukeServant')
      edit_switch_perm('', 'maChr', 'swAAAttackoftheWarder')
      ImGui.SameLine()    
      edit_text_perm('Attack of the Warder (AA)', 'maChr', 'stAAAttackoftheWarder')
      ImGui.NewLine()   
      ImGui.TreePop()  
    end

    if ImGui.TreeNode('paragon / consume') then  
      -- para timer
      edit.linetext('timer check##paragon', 'maTimer', 'tiCheck_Para', nil, {sb=false, rb=false, list=false})

      if ImGui.TreeNode('group paragon') then  
         ImGui.Columns(2, 'paragon', false)
          edit.linetext('', 'maChr', 'stPctParagonG', nil, {sb=true, rb=false, list=false})
        ImGui.NextColumn()
          ImGui.Text("% mana to use")
        ImGui.Columns()   
        edit.linetext('Paragon of Spirit (AA)', 'maChr', 'stAAParagonofSpirit', nil, {sb=true, rb=false, list=false})

        ImGui.NewLine()   
        ImGui.TreePop()  
      end

      if ImGui.TreeNode('focused paragon') then  
        ImGui.Columns(2, 'focusparagon', false)
          edit.linetext('', 'maChr', 'stPctParagonF')
        ImGui.NextColumn()
          ImGui.Text("% mana to use")
        ImGui.Columns()   
        edit_switch_perm('', 'maChr', 'swAAFocusedParagonofSpirits')
        ImGui.SameLine()    
        edit.linetext('Focused Paragon of Spirits (AA)', 'maChr', 'stAAFocusedParagonofSpirits')

        ImGui.Columns(2, 'focusparagonother', false)
          edit.linetext('', 'maChr', 'stPctParagonFO')
        ImGui.NextColumn()
          ImGui.Text("% mana to use on other")
        ImGui.Columns()   
        button_clear_list('lsParagonClass')
        ImGui.SameLine()     
        edit.linetext('target classes', 'maChr', 'lsParagonClass', nil, {sb=true, rb=true, list=true})
        util.list.classes('lsParagonClass')
        ImGui.NewLine()   
        ImGui.TreePop()  
      end

      if ImGui.TreeNode('consumption of spirit') then  
        ImGui.Columns(2, 'consume', false)
          edit_text_perm('', 'maChr', 'stPctConsume')
        ImGui.NextColumn()
          ImGui.Text("% mana to use")
        ImGui.Columns()    
        edit_switch_perm('', 'maChr', 'swAAConsumptionofSpirit')
        ImGui.SameLine()    
        edit_text_perm('Consumption of Spirit (AA)', 'maChr', 'stAAConsumptionofSpirit')
        ImGui.NewLine()   
        ImGui.TreePop()  
      end

      ImGui.NewLine() 
      ImGui.TreePop()  
    end

    ImGui.NewLine()    
    edit.linetext('Growl (spell)', 'maChr', 'stGrowl', nil, {sb=true, rb=false, list=false})
    ImGui.NewLine()    
    edit.linetext('Roaring Strike (AA)', 'maChr', 'stAARoaringStrike', nil, {sb=true, rb=false, list=false})
    edit.linetext('Chameleon Strike (AA)', 'maChr', 'stAAChameleonStrike', nil, {sb=true, rb=false, list=false})
    edit.linetext('Bestial Alignment (AA)', 'maChr', 'stAABestialAlignment', nil, {sb=true, rb=false, list=false})
    edit.linetext('Frenzied Swipes (AA)', 'maChr', 'stAAFrenziedSwipes', nil, {sb=true, rb=false, list=false})
    edit.linetext('Ferociousness (AA)', 'maChr', 'stAAFerociousness', nil, {sb=true, rb=false, list=false})
    edit.linetext("Companion's Fury (AA)", 'maChr', 'stAACompanionsFury', nil, {sb=true, rb=false, list=false})
    edit.linetext('Frenzy of Spirit (AA)', 'maChr', 'stAAFrenzyofSpirit', nil, {sb=true, rb=false, list=false})
    edit.linetext('Group Bestial Alignment (AA)', 'maChr', 'stAAGroupBestialAlignment', nil, {sb=true, rb=false, list=false})
    edit.linetext('BloodLust (AA)', 'maChr', 'stAABloodLust', nil, {sb=true, rb=false, list=false})
    edit.linetext('Enduring Frenzy (AA)', 'maChr', 'stAAEnduringFrenzy', nil, {sb=true, rb=false, list=false})
    ImGui.NewLine()    
    edit.linetext('Bestial (disc)', 'maChr', 'stBestial', nil, {sb=true, rb=false, list=false})
    edit.linetext('Reflexive (disc)', 'maChr', 'stRending', nil, {sb=true, rb=false, list=false})
    edit.linetext('Vindication (disc)', 'maChr', 'stVindication', nil, {sb=true, rb=false, list=false})
    edit.linetext('Rake (disc)', 'maChr', 'stRake', nil, {sb=true, rb=false, list=false})
    edit.linetext('Claws (disc)', 'maChr', 'stClaws', nil, {sb=true, rb=false, list=false})
    edit.linetext('AE Claws (disc)', 'maChr', 'stAEClaws', nil, {sb=true, rb=false, list=false})
    edit.linetext('Furry (disc)', 'maChr', 'stFury', nil, {sb=true, rb=false, list=false})
    edit.linetext('Savagery (disc)', 'maChr', 'stSavage', nil, {sb=true, rb=false, list=false})
  end

  -- Berserker
  if mq.TLO.Me.Class.ID() == 16 then
  end

end



local healPoint = {}
function updateHealPoints()
  for _, classCode in pairs(classTable) do
    if healPoint[classCode] and healPoint[classCode].updated then
      mq.cmd.luaedit('stHealPoint'..classCode, healPoint[classCode].value)
      healPoint[classCode].updated = false
    else
      if not healPoint[classCode] then healPoint[classCode] = {} end
      healPoint[classCode]['value'] = tonumber(mq.TLO.Macro.Variable('maHeal').Find('stHealPoint'..classCode).Value())
      healPoint[classCode]['updated'] = false
    end
  end
end




control = {}

  control.build = {

    agro = function ()

      if ImGui.CollapsingHeader('/agro') then
        ImGui.NewLine()
        indent(1,1)
        ImGui.Columns(2, 'agrothingies', false)
          edit.switchbox('agro', 'maAgro', 'swAgro', tip.swAgro)
          edit.linetext('hold', 'maAgro', 'stPctAgroHold', tip.stPctAgroHold, {sb=false, rb=false, list=false})
        ImGui.NextColumn()
          edit.linetext('taunt', 'maAgro', 'stPctTaunt', tip.stPctTaunt, {sb=false, rb=false, list=false})
          edit.linetext('timer', 'maTimer', 'tiAgro', tip.tiAgro, {sb=false, rb=false, list=false})
        ImGui.Columns()  
        indent(1,2)

        ImGui.NewLine()
        edit.controllist('Agro', 20, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine()        
      end
    end,
        
    buff = function ()

      if ImGui.CollapsingHeader('/buff') then
        ImGui.NewLine()
        indent(1,1)
        ImGui.Columns(3, 'noname', false)
          edit.switchbox('aura', 'maBuff', 'swBuffAura', tip.swBuffAura)
          edit.switchbox('self', 'maBuff', 'swBuffSelf', tip.swBuffSelf)
          edit.switchbox('crew', 'maBuff', 'swBuffCrew', tip.swBuffCrew)
          edit.switchbox('temp', 'maBuff', 'swBuffTemp', tip.swBuffTemp)
        ImGui.NextColumn()
          edit.switchbox('unity', 'maBuff', 'swBuffUnity', tip.swBuffUnity)
          edit.switchbox('minion', 'maMinion', 'swPetBuff', tip.swPetBuff)
          edit.switchbox('raid', 'maBuff', 'swBuffRaid', tip.swBuffRaid)
          edit.switchbox('group', 'maBuff', 'swBuffGroup', tip.swBuffGroup)
        ImGui.NextColumn()
          edit.switchbox('now', 'maBuff', 'swBuffNow', tip.swBuffNow)
          edit.switchbox('ammo', 'maBuff', 'swBuffAmmo', tip.swBuffAmmo)
          edit.switchbox('beg', 'maBuff', 'swBuffBeg', tip.swBuffBeg)
          edit.switchbox('nolobby', 'maBuff', 'swBuffNoLobby', tip.swBuffNoLobby)
        ImGui.Columns()  
        ImGui.NewLine()
          edit.linetext('unity', 'maChr', 'stAAUnity', tip.stAAUnity, {sb=false, rb=false, list=false})
        ImGui.NewLine()
        indent(1,2)  
   
        if ImGui.TreeNode('shrink') then
          ImGui.Columns(3, 'shrink', false)
            edit.switchbox('shrink', 'maBuff', 'swBuffShrink', tip.swBuffShrink)
          ImGui.NextColumn()     
            edit.linetext('height', 'maBuff', 'stShrinkHeight', tip.stShrinkHeight, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
          ImGui.Columns() 
          edit.linetext('item', 'maBuff', 'stShrinkItem', tip.stShrinkItem, {sb=false, rb=false, list=false})
          ImGui.NewLine()
          ImGui.TreePop()      
        end
        

        edit.controllist('Buff', 50, {alternate=false, alias=true, tag=true, name='list'})
        ImGui.NewLine()           
        
      end
    end,
    
    burn = function ()

      if ImGui.CollapsingHeader('/burn') then
        ImGui.NewLine()
        indent(1,1)
        ImGui.Columns(2, 'noname', false)
          edit.switchbox('force', 'maBurn', 'swBurnForce', tip.swBurnForce)
          edit.switchbox('auto', 'maBurn', 'swBurnAuto', tip.swBurnAuto)
          edit.switchbox('raid', 'maBurn', 'swBurnRaid', tip.swBurnRaid)
          edit.linetext('engage', 'maBurn', 'stPctBurnEngage', tip.stPctBurnEngage, {sb=false, rb=false, list=false})
          edit.switchbox('count', 'maBurn', 'stBurnCount', tip.stBurnCount)
        ImGui.NextColumn()
        ImGui.Columns()

        indent(1,2)
        ImGui.NewLine()
      end
      
    end,
      
    cc = function ()

      if ImGui.CollapsingHeader('/cc') then
        ImGui.NewLine() 
        
        indent(1,1)
          ImGui.Columns(2, 'noname', false)
            edit.switchbox('dot', 'maCC', 'swCombatDoT', tip.swCombatDoT)
            edit.switchbox('heal', 'maCC', 'swCombatHeal', tip.swCombatHeal)
            edit.switchbox('melee', 'maCC', 'swCombatMelee', tip.swCombatMelee)
            edit.switchbox('range', 'maCC', 'swCombatRange', tip.swCombatRange)
            edit.switchbox('nuke', 'maCC', 'swCombatNuke', tip.swCombatNuke)
            if class[mq.TLO.Me.Class.ShortName()].crowdcontrol then
              edit.switchbox('crowd control', 'maCC', 'swCombatControl', tip.swCombatControl)
            end

          ImGui.NextColumn()
            edit.linetext('pct engage', 'maCC', 'stPctEngage', tip.stPctEngage, {sb=false, rb=false, list=false})
            edit.linetext('z radius', 'maCC', 'stZRadius', tip.stZRadius, {sb=false, rb=false, list=false})
          ImGui.Columns()

        ImGui.NewLine() 

        if ImGui.TreeNode('assist') then
          ImGui.Columns(2, 'assistcol', false)
            edit.switchbox('force manual', 'maCC', 'swManualAssist', tip.swManualAssist)
            edit.switchbox('stop on ds', 'maCC', 'swStoponDS', tip.swStoponDS)
          
          ImGui.NextColumn()
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

          ImGui.NewLine()
          ImGui.Columns()

          ImGui.NewLine()
          edit.linetext('assist line', 'maCC', 'lsAss', tip.lsAss, {sb=false, rb=false, list=true})
          buttons_adc_target ('lsAss')
          
          ImGui.NewLine()
          ImGui.TreePop()      
        end

        if ImGui.TreeNode('glyph') then
          ImGui.Columns(2, 'glyphtree', false)
            edit.switchbox('group', 'maCC', 'swGlyphGroup', tip.swGlyphGroup)
            edit.switchbox('raid', 'maCC', 'swGlyphRaid', tip.swGlyphRaid)
          ImGui.NextColumn()     
            edit.linetext('glyph', 'maCC', 'stGlyph', tip.stGlyph, {sb=false, rb=false, list=false})
          ImGui.Columns() 
          ImGui.NewLine()
          ImGui.TreePop()      
        end
        
        ImGui.NewLine() 
       
        edit.linetext('no cast with', 'maCC', 'lsNoCastWith', tip.lsNoCastWith, {sb=false, rb=true, list=true})
        edit.linetext('no melee with', 'maCC', 'lsNoMeleeWith', tip.lsNoMeleeWith, {sb=false, rb=true, list=true})
        
        ImGui.NewLine() 
        
        indent(1,2)
      end

    end,

    chr = function ()
      if ImGui.CollapsingHeader('/chr') then

        ImGui.NewLine() 
        indent(1,1)
        ImGui.Columns(2, 'spire', false)
          edit_text_perm('ae', 'maChr', 'stCountAE', tip.stCountAE, {sb=false, rb=false, list=false})
        ImGui.NextColumn()
          edit_text_perm('synergy (AA)', 'maData', 'stSynergy', tip.stSynergy, {sb=false, rb=false, list=false})
        ImGui.Columns()      
        ImGui.NewLine() 
        indent(1,2)

     
        if ImGui.TreeNode('order - out of combat') then
          edit.linetext('out of combat', 'maChr', 'lsOrderClassBase', tip.lsOrderClassBase, {sb=false, rb=true, list=true})
          class_cycle_list('lsOrderClassBase')
          ImGui.TreePop()      
          ImGui.NewLine()   
        end  

        if ImGui.TreeNode('order - before combat') then
          edit.linetext('before combat', 'maChr', 'lsOrderClassPre', tip.lsOrderClassPre, {sb=false, rb=true, list=true})
          class_cycle_list('lsOrderClassPre')
          ImGui.TreePop()      
          ImGui.NewLine()   
        end  

        if ImGui.TreeNode('order - in combat') then
          edit.linetext('in combat', 'maChr', 'lsOrderClass', tip.lsOrderClass, {sb=false, rb=true, list=true})
          class_cycle_list('lsOrderClass')
          ImGui.TreePop()
          ImGui.NewLine()
        end  

        if ImGui.TreeNode('order - after combat') then
          edit.linetext('after combat', 'maChr', 'lsOrderClassPost', tip.lsOrderClassPost, {sb=false, rb=true, list=true})
          class_cycle_list('lsOrderClassPost')
          ImGui.TreePop()
          ImGui.NewLine()
        end  

        if ImGui.TreeNode('order - find cast type') then
          edit.linetext('search order', 'maChr', 'lsOrderCastType', tip.lsOrderCastType, {sb=false, rb=true, list=true})
          button_edit_list('lsOrderCastType', 'alt', tip.button_alt)
          ImGui.SameLine()
          button_edit_list('lsOrderCastType', 'pulse', tip.button_pulse)
          button_edit_list('lsOrderCastType', 'spell', tip.button_spell)
          ImGui.SameLine()
          button_edit_list('lsOrderCastType', 'disc', tip.button_disc)
          button_edit_list('lsOrderCastType', 'item', tip.button_item)
          ImGui.SameLine()
          button_edit_list('lsOrderCastType', 'ability', tip.button_ability)
          ImGui.TreePop()      
          ImGui.NewLine()   
        end  

          ImGui.NewLine()   
       
        if ImGui.TreeNode('fade') then    
          ImGui.Columns(2, 'arb', false)
            edit.linetext('class fade', 'maData', 'stFade', tip.stFade, {sb=false, rb=false, list=false})
            edit.linetext('HP %', 'maChr', 'stPctFade', tip.stPctFade, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
          ImGui.Columns()    
          ImGui.NewLine()   
          ImGui.TreePop() 
        end
        
        if ImGui.TreeNode('intensity of the resolute') then
          ImGui.Columns(2, 'spire', false)
            edit.switchbox('group', 'maChr', 'swIntensityGroup', tip.swIntensityGroup)
            edit.switchbox('raid', 'maChr', 'swIntensityRaid', tip.swIntensityRaid)
          ImGui.NextColumn()
          ImGui.Columns()
            edit.linetext('Intensity of the Resolute (AA)', 'maChr', 'stAAIntensity', tip.stAAIntensity, {sb=false, rb=false, list=false})      
          ImGui.TreePop()      
          ImGui.NewLine()   
        end  

        if ImGui.TreeNode('spire') then
          ImGui.Columns(2, 'spire', false)
            edit.switchbox('group', 'maChr', 'swSpireGroup', tip.swSpireGroup)
            edit.switchbox('raid', 'maChr', 'swSpireRaid', tip.swSpireRaid)
          ImGui.NextColumn()
          ImGui.Columns()
            edit.linetext('spire', 'maData', 'stSpire', tip.stSpire, {sb=false, rb=false, list=false})
          ImGui.NewLine()   
          ImGui.TreePop()      
        end  

        if ImGui.TreeNode('invis') then
          ImGui.Columns(4, 'colinvis', false)
            edit.linetext('delay', 'maChr', 'stInvisDelay', tip.stInvisDelay, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
          ImGui.NextColumn()
          ImGui.NextColumn()
          ImGui.Columns()
            edit.linetext('self invis', 'maChr', 'stInvisSingle', tip.stInvisSingle, {sb=false, rb=false, list=false})
            edit.linetext('group invis', 'maChr', 'stInvisGroup', tip.stInvisGroup, {sb=false, rb=false, list=false})
            edit.linetext('self IVU', 'maChr', 'stInvisSingleIVU', tip.stInvisSingleIVU, {sb=false, rb=false, list=false})
            edit.linetext('group IVU', 'maChr', 'stInvisGroupIVU', tip.stInvisGroupIVU, {sb=false, rb=false, list=false})
          ImGui.NewLine()   
          ImGui.TreePop()      
        end  
        
        if ImGui.TreeNode('class specific') then
          ImGui.NewLine()   
          classOptions() 
          ImGui.NewLine()   
          ImGui.TreePop()      
        end
     
        ImGui.NewLine()       
      end        
    end,

    clickitem = function ()

      if ImGui.CollapsingHeader('/clickitem') then

        ImGui.NewLine()
        edit.controllist('Item', 20, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine()  

      end
    end,

    crew = function ()
      if ImGui.CollapsingHeader('/crew') then
      end      
      
    end,
    
    cure = function ()
      if ImGui.CollapsingHeader('/cure') then

        ImGui.NewLine() 
        indent(1,1)
        edit.linetext('no cure', 'maCure', 'lsNoCure', tip.lsNoCure, {sb=false, rb=true, list=true})
        ImGui.NewLine() 
        edit.switchbox('crew', 'maCure', 'swCureCrew', tip.swCureCrew)
        edit.switchbox('group', 'maCure', 'swCureGroup', tip.swCureGroup)
        edit.switchbox('self', 'maCure', 'swCureSelf', tip.swCureSelf)
        indent(1,2)

        ImGui.NewLine()
        edit.controllist('Cure', 12, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine() 

     end
    end,

    cursor = function ()
      --if ImGui.CollapsingHeader('/cursor') then
      --end
      
    end,

    dot = function ()

      if ImGui.CollapsingHeader('/dot') then
          ImGui.NewLine()
          ImGui.Indent(16)
          ImGui.Columns(2, 'nocurename', false)
            edit.linetext('refresh', 'maDoT', 'stDotRefresh', tip.stDotRefresh, {sb=false, rb=false, list=false})
            edit.linetext('% stop', 'maDoT', 'stPctStopDoT', tip.stPctStopDoT, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
          ImGui.Columns()
          ImGui.Indent(-16)
          ImGui.NewLine()
          edit.controllist('DoT', 20, {alternate=true, alias=false, tag=true, name='list'})
          ImGui.NewLine()

      end
    end,

    debuff = function ()
        if ImGui.CollapsingHeader('/debuff') then
          ImGui.NewLine()

          if ImGui.TreeNode('order - debuff cycle') then
            edit.linetext('order', 'madeBuff', 'lsdeBuffOrder', nil, {sb=false, rb=true, list=true})
            button_edit_list('lsdeBuffOrder', 'tash')
            ImGui.SameLine()
            button_edit_list('lsdeBuffOrder', 'malo')
            ImGui.SameLine()
            button_edit_list('lsdeBuffOrder', 'slow')
            button_edit_list('lsdeBuffOrder', 'cripple')
            ImGui.SameLine()
            button_edit_list('lsdeBuffOrder', 'eradicate')
            ImGui.SameLine()
            button_edit_list('lsdeBuffOrder', 'snare')
            ImGui.NewLine()
            ImGui.TreePop()
          end
          indent(1,1)
          ImGui.NewLine() 

          ImGui.Columns(4, 'debuffathing', false)
            edit.switchbox('cripple', 'madeBuff', 'swCripple', tip.swCripple)
            edit.switchbox('eradicate', 'madeBuff', 'swEradicate', tip.swEradicate)
            edit.switchbox('malo', 'madeBuff', 'swMalo', tip.swMalo)
          ImGui.NextColumn()
            edit.switchbox('slow', 'madeBuff', 'swSlow', tip.swSlow)
            edit.switchbox('snare', 'madeBuff', 'swSnare', tip.swSnare)
            edit.switchbox('tash', 'madeBuff', 'swTash', tip.swTash)
          ImGui.NextColumn()
            edit.switchbox('mez', 'madeBuff', 'swMez', tip.swMez)
            edit.linetext('mez resist', 'madeBuff', 'stCountMezResist', tip.stCountMezResist, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
          ImGui.Columns()
          indent(1,2)

          ImGui.NewLine()
          edit.controllist('deBuff', 12, {alternate=true, alias=false, tag=true, name='list'})
          ImGui.NewLine()

        end
      
    end,

    defense = function ()
      if ImGui.CollapsingHeader('/defense') then
        ImGui.NewLine()
        indent(1,1)
        ImGui.Columns(2, 'defense', false)
        edit.linetext('count', 'maDefense', 'stCountDef', tip.stCountDef, {sb=false, rb=false, list=false})
        edit.linetext('pct', 'maDefense', 'stPctDef', tip.stPctDef, {sb=false, rb=false, list=false})
        ImGui.Columns()
        indent(1,2)
        ImGui.NewLine()
        edit.controllist('Defense', 20, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine()

      end
    end,

    entropy = function ()
        if ImGui.CollapsingHeader('/entropy') then    
          ImGui.NewLine()
          indent(1,1)
          
          ImGui.Columns(2, 'entbase', false)
            edit.switchbox('autolist', 'maEntropy', 'swAutoList', tip.swAutoList)
            edit.switchbox('buff cooldown', 'maEntropy', 'swBuffCooldownWait', tip.swBuffCooldownWait)
            edit.switchbox('con color', 'maEntropy', 'swUseConColor', tip.swUseConColor)
            edit.switchbox('TLP', 'maEntropy', 'swTLP', tip.swTLP)
            edit.switchbox('set remember', 'maEntropy', 'swBuildSetRemember', tip.swBuildSetRemember)
            edit.switchbox('maintenance', 'maEntropy', 'swMaintenance', tip.swMaintenance)
            edit.switchbox('inv in manual', 'maEntropy', 'swAutoInvManual', tip.swAutoInvManual)
            edit.switchbox('events', 'maEntropy', 'swEventsInc', tip.swEventsInc)
            edit.switchbox('hook', 'maEntropy', 'swHookSub', tip.swHookSub)
          ImGui.NextColumn()
            edit.linetext('cast loop', 'maEntropy', 'stCastLoop', tip.stCastLoop, {sb=false, rb=false, list=false})
            local drop = mq.TLO.Macro.Variable('maEntropy').Find('stEngine').Value()
            if ImGui.BeginCombo('engine', drop) then
              for _, v in ipairs({ '1', '2', '3' }) do
                local selected = v == drop
                if ImGui.Selectable(v, selected) and not selected then
                  mq.cmd.luaedit('stEngine', v)
                end
              end
              ImGui.EndCombo()
            end
            edit.linetext('fizzles', 'maEntropy', 'stCountFizzleRetry', tip.stCountFizzleRetry, {sb=false, rb=false, list=false})
            edit.linetext('main loop', 'maEntropy', 'stMainLoopDelay', tip.stMainLoopDelay, {sb=false, rb=false, list=false})
            ImGui.NewLine()         
            edit.switchbox('relay tells', 'maEntropy', 'swRelayTell', tip.swRelayTell)
            edit.switchbox('tell beep', 'maEntropy', 'swRelayTellBeep', tip.swRelayTellBeep)
            
            
          ImGui.Columns() 
          indent(1,2)         

          ImGui.NewLine()         

          -- /entropy random
          if ImGui.TreeNode('random') then
            ImGui.Columns(2, 'random', false)
              edit.linetext('engage', 'maEntropy', 'stRNDEngage', tip.stRNDEngage, {sb=false, rb=false, list=false})
              edit.linetext('engage swarm', 'maEntropy', 'stRNDEngageSwarm', tip.stRNDEngageSwarm, {sb=false, rb=false, list=false})
              edit.linetext('rez take', 'maEntropy', 'stRNDRezTake', tip.stRNDRezTake, {sb=false, rb=false, list=false})
            ImGui.NextColumn()
              edit.linetext('engage pet', 'maEntropy', 'stRNDEngagePet', tip.stRNDEngagePet, {sb=false, rb=false, list=false})
              edit.linetext('engage burn', 'maEntropy', 'stRNDEngageBurn', tip.stRNDEngageBurn, {sb=false, rb=false, list=false})
              edit.linetext('repeat', 'maEntropy', 'stRNDRepeat', tip.stRNDRepeat, {sb=false, rb=false, list=false})
            ImGui.Columns() 
            ImGui.NewLine()   
            ImGui.TreePop()      
          end

          -- /entropy dannet
          if ImGui.TreeNode('dannet') then
            ImGui.Columns(2, 'dannet', false)
              edit.switchbox('local echo', 'maEntropy', 'swLocalEcho', tip.swLocalEcho)
              edit.switchbox('command echo', 'maEntropy', 'swCommandEcho', tip.swCommandEcho)
              edit.switchbox('front delimiter', 'maEntropy', 'swFrontDelim', tip.swFrontDelim)
              edit.switchbox('full names', 'maEntropy', 'swFullNames', tip.swFullNames)
              edit.switchbox('evasive refresh', 'maEntropy', 'swEvasiveRefresh', tip.swEvasiveRefresh)
            ImGui.NextColumn()
              edit.linetext('evasive', 'maEntropy', 'stNetworkEvasive', tip.stNetworkEvasive, {sb=false, rb=false, list=false})
              edit.linetext('expired', 'maEntropy', 'stNetworkExpired', tip.stNetworkExpired, {sb=false, rb=false, list=false})
              edit.linetext('query', 'maEntropy', 'stDanNetQueryDelay', tip.stDanNetQueryDelay, {sb=false, rb=false, list=false})
              edit.linetext('timeout', 'maEntropy', 'stNetworkTimeout', tip.stNetworkTimeout, {sb=false, rb=false, list=false})
              edit.linetext('group', 'maEntropy', 'stEntropyGroup_all', tip.stEntropyGroup_all, {sb=false, rb=false, list=false})
            ImGui.Columns() 
            ImGui.NewLine()
            ImGui.TreePop()      
          end
          ImGui.NewLine()
        end
      
    end,

    env = function ()
      if ImGui.CollapsingHeader('/env') then    
        ImGui.NewLine()
          
        if ImGui.TreeNode('food and drink') then        
          ImGui.Columns(2, 'f&d', false)
            edit.linetext('munchies timer', 'maTimer', 'tiCheck_FoodDrink', tip.tiCheck_FoodDrink, {sb=false, rb=false, list=false})
            edit.linetext('food', 'maEnv', 'stFood', tip.stFood, {sb=false, rb=false, list=false})
            edit.linetext('drink', 'maEnv', 'stDrink', tip.stDrink, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
          ImGui.Columns()
          ImGui.TreePop()      
          ImGui.NewLine()   
        end  

        if ImGui.TreeNode('loot') then
          local drop = mq.TLO.Macro.Variable('maEnv').Find('stLootMode').Value()
          if ImGui.BeginCombo('loot', drop) then
            for _, v in ipairs({ 'off', 'manual', 'advanced' }) do
              local selected = v == drop
              if ImGui.Selectable(v, selected) and not selected then
                mq.cmd.luaedit('stLootMode', v)
              end
            end
            ImGui.EndCombo()
          end
          ImGui.TreePop()      
          ImGui.NewLine()   
        end 

        if ImGui.TreeNode('fireworks') then
          ImGui.Columns(2, 'fw', false)
            edit.switchbox('fireworks', 'maEnmv', 'swAAFireworks', tip.swAAFireworks)
            edit.linetext('fireworks timer', 'maTimer', 'tiWaste_Fireworks', tip.tiWaste_Fireworks, {sb=false, rb=false, list=false})  
          ImGui.NextColumn()
          ImGui.Columns()
          ImGui.TreePop()      
          ImGui.NewLine()   
        end 

        if ImGui.TreeNode('inventory') then
            edit.switchbox('auto inventory', 'maEnv', 'swAutoInv', tip.swAutoInv)
            edit.linetext('item list', 'maEnv', 'lsAutoInventory', tip.lsAutoInventory, {sb=false, rb=true, list=true})
          ImGui.TreePop()      
          ImGui.NewLine()   
        end 

        if ImGui.TreeNode('exp') then
          ImGui.Columns(2, 'exp', false)
          edit.switchbox('correct exp', 'maEnv', 'swCorrectEXPAA', tip.swCorrectEXPAA)
          edit.linetext('check exp adjust', 'maTimer', 'tiCheck_EXP_Adjust', tip.tiCheck_EXP_Adjust, {sb=false, rb=false, list=false})  
          edit.linetext('level %', 'maEnv', 'stLvlPct', tip.stLvlPct, {sb=false, rb=false, list=false})
          edit.linetext('level max', 'maEnv', 'stLvlMax', tip.stLvlMax, {sb=false, rb=false, list=false})
          ImGui.NextColumn()
          ImGui.Columns()
          ImGui.TreePop()      
          ImGui.NewLine()   
        end 

        if ImGui.TreeNode('buff') then
          ImGui.Columns(2, 'exp', false)
          edit.switchbox('drop buffs', 'maEnv', 'swDropBuffs', tip.swDropBuffs)
          edit.linetext('drop buff timer', 'maTimer', 'tiCheck_Drop_Buffs', tip.tiCheck_Drop_Buffs, {sb=false, rb=false, list=false})  
          ImGui.NextColumn()
          edit.switchbox('drop invis', 'maEnv', 'swAlwaysDropInvisCauseThePeopleIGroupWithAreAssHats', tip.swAlwaysDropInvisCauseThePeopleIGroupWithAreAssHats)
          edit.switchbox('ignore invis', 'maEnv', 'swIgnoreInvis', tip.swIgnoreInvis)
          edit.switchbox('enable begging mages', 'maEnv', 'swBegMAG', tip.swBegMAG)
          ImGui.Columns()
          edit.linetext('drop list', 'maEnv', 'lsDropBuffs', tip.lsDropBuffs, {sb=false, rb=true, list=true})
          edit.linetext('no cast list', 'maEnv', 'lsNoCastBuff', tip.lsNoCastBuff, {sb=false, rb=true, list=true})
          ImGui.TreePop()      
          ImGui.NewLine()   
        end 
          
          ImGui.NewLine()
          indent(1,1)

          ImGui.Columns(2, 'other', false)
            edit.switchbox('safelist guild', 'maEnv', 'swSafeListGuild', tip.swSafeListGuild)
            edit.switchbox('group invite', 'maEnv', 'swTakeGroupInvite', tip.swTakeGroupInvite)
            edit.switchbox('raid invite', 'maEnv', 'swTakeRaidInvite', tip.swTakeRaidInvite)
            ImGui.NewLine()
            edit.switchbox('tribute', 'maEnv', 'swCheckTribute', tip.swCheckTribute)

            ImGui.NewLine()
            edit.linetext('current build', 'maEnv', 'stBuildSetCurrent', tip.stBuildSetCurrent, {sb=false, rb=false, list=false})

            if class[mq.TLO.Me.Class.ShortName()]['sos'] then
              ImGui.NewLine()
              edit.switchbox('use sos', 'maEnv', 'swSoS', tip.swSoS)
            end

          ImGui.NextColumn()
          
            edit.linetext('buff gem', 'maEnv', 'stBuffGem', tip.stBuffGem, {sb=false, rb=false, list=false})
            edit.switchbox('buff gem hold', 'maEnv', 'swHoldBuffGem', tip.swHoldBuffGem)
            ImGui.NewLine()
            edit.linetext('min level', 'maEnv', 'stMobLvlMin', tip.stMobLvlMin, {sb=false, rb=false, list=false})
            edit.linetext('max level', 'maEnv', 'stMobLvlMax', tip.stMobLvlMax, {sb=false, rb=false, list=false})
            edit.linetext('environment radius', 'maEnv', 'stEnvRadius', tip.stEnvRadius, {sb=false, rb=false, list=false})
            edit.linetext('safe radius', 'maEnv', 'stEnvSafeRadius', tip.stEnvSafeRadius, {sb=false, rb=false, list=false})
          
          ImGui.Columns()
          ImGui.NewLine()
          indent(1,2)
          ImGui.NewLine()
        end
    end,

    heal = function ()
      if ImGui.CollapsingHeader('/heal') then

        ImGui.NewLine()  
        indent(1,1) 
          ImGui.Columns(2, 'heal##control', false)
            edit.switchbox('self', 'maHeal', 'swHealSelf', tip.swHealSelf)
            edit.switchbox('dannet', 'maHeal', 'swHealDanNet', tip.swHealDanNet)
            edit.switchbox('group', 'maHeal', 'swHealGroup', tip.swHealGroup)
            
            -- xtarget   
            edit.switchbox('xt', 'maHeal', 'swHealXTarget', tip.swHealXTarget, 'heal xt build')
            edit.switchbox('pet', 'maHeal', 'swHealPet', tip.swHealPet)
            edit.linetext('rampage', 'maHeal', 'stRampageTank', tip.stRampageTank, {sb=false, rb=true, list=false})
          
          ImGui.NextColumn()
            edit.switchbox('weight', 'maHeal', 'swHealWeighted', tip.swHealWeighted)
            edit.switchbox('break', 'maHeal', 'swBreakHealPCT', tip.swBreakHealPCT)
            edit.linetext('adjust', 'maHeal', 'stHealAdjust', tip.stHealAdjust, {sb=false, rb=false, list=false})
          ImGui.Columns()  
          ImGui.NewLine()

          edit.linetext('protect outside', 'maHeal', 'lsProtectOutsideGroup', tip.lsProtectOutsideGroup, {sb=false, rb=false, list=true})
          buttons_adc_target ('lsProtectOutsideGroup')

          ImGui.NewLine()
        indent(1,2) 

        if ImGui.TreeNode('heal cycle order') then       
          edit.linetext('order', 'maHeal', 'lsOrderHeal', tip.lsOrderHeal, {sb=false, rb=true, list=true})
          button_edit_list('lsOrderHeal', 'cure')
          ImGui.SameLine()
          button_edit_list('lsOrderHeal', 'tot')
          ImGui.SameLine()
          button_edit_list('lsOrderHeal', 'self')
          ImGui.SameLine()
          button_edit_list('lsOrderHeal', 'dannet')
          button_edit_list('lsOrderHeal', 'ch')
          ImGui.SameLine()
          button_edit_list('lsOrderHeal', 'group')
          ImGui.SameLine()
          button_edit_list('lsOrderHeal', 'xtarget')
          ImGui.SameLine()
          button_edit_list('lsOrderHeal', 'pet')
          
          ImGui.TreePop()
          ImGui.NewLine()
        end  
                      
        if ImGui.TreeNode('xtarget classes to heal') then       
          edit.linetext('class list', 'maHeal', 'lsHealXTClass', tip.lsHealXTClass, {sb=false, rb=true, list=true})
          ImGui.Columns(2, '##classlist', false)
            edit.selectlist('classes', 'maHome', 'lsHealXTClass', classTable)
          ImGui.NextColumn()
          ImGui.Columns()  
          ImGui.NewLine()          
          
          
          ImGui.TreePop()
          ImGui.NewLine()
        end  

        -- heal point
        if ImGui.TreeNode('point##/heal') then     
          for classCode, healPoint in pairs(healPoint) do
            edit_switch_perm('', 'maHeal', 'swHealNever'..classCode)
            tooltip(false, tip.never_heal.. classCode)
            ImGui.SameLine()
            healPoint.value, used = ImGui.DragInt(classCode..'##healpointslide', healPoint.value, 1, 0, 99)
            if used then 
              healPoint.updated = true 
            end
            tooltip(false, tip.start_healing..healPoint.value)
          end
          
          ImGui.NewLine()
          ImGui.TreePop()     
        end

        edit.controllist('Heal', 50, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine()  
         
      end      
    end,

    home = function ()
      if ImGui.CollapsingHeader('/home') then
        ImGui.NewLine()
        indent(1,1)
        
        ImGui.Columns(2, 'homebase', false)
            edit.switchbox('on auto', 'maHome', 'swonAuto', tip.swonAuto)
            edit.switchbox('check in combat', 'maHome', 'swinCombat', tip.swinCombat)
            edit.switchbox('clear on gather', 'maHome', 'swMoveGatherClear', tip.swMoveGatherClear)
            edit.switchbox('clear on death', 'maHome', 'swMoveDeathClear', tip.swMoveDeathClear)
            edit.switchbox('face fast', 'maHome', 'swFaceFast', tip.swFaceFast)
          ImGui.NextColumn()
            edit.linetext('variance', 'maHome', 'stHomeVariance', tip.stHomeVariance, {sb=false, rb=false, list=false})
            edit.linetext('view arc', 'maHome', 'stFaceArc', tip.stFaceArc, {sb=false, rb=false, list=false})
          ImGui.Columns()  
        ImGui.NewLine()
          edit.selectlist('position', 'maHome', 'stCombatPosition', { 'free', 'left', 'right', 'rear', 'face', 'random' })
          edit.linetext('random list', 'maHome', 'lsPosition', tip.lsPosition, {sb=false, rb=true, list=true})
          button_edit_list('lsPosition', 'face')
          ImGui.SameLine()
          button_edit_list('lsPosition', 'left')
          ImGui.SameLine()
          button_edit_list('lsPosition', 'right')
          ImGui.SameLine()
          button_edit_list('lsPosition', 'rear')
        ImGui.NewLine()
        indent(1,2)
        
      end
    end,

    mode = function ()
      if ImGui.CollapsingHeader('/mode') then
      end
    end,

    minion = function ()
      if class[mq.TLO.Me.Class.ShortName()].pet then
        if ImGui.CollapsingHeader('/minion') then
          ImGui.NewLine()
          indent(1,1)        
          ImGui.Columns(2, 'minioncol', false)
            edit.switchbox('use pet', 'maMinion', 'swPet', tip.swPet)
            edit.switchbox('buff pet', 'maMinion', 'swPetBuff', tip.swPetBuff)
            edit.switchbox('shrink', 'maMinion', 'swPetShrink', tip.swPetShrink)
            edit.switchbox('use swarm', 'maMinion', 'swSwarm', tip.swSwarm)
            edit.switchbox('no swarm on ds', 'maMinion', 'swNoSwarmonDS', tip.swNoSwarmonDS)
            edit.switchbox('on cc force', 'maMinion', 'swonForce', tip.swonForce)
            edit.switchbox('use pet gear', 'maMinion', 'swUsePetGear', tip.swUsePetGear)
          ImGui.NextColumn()
            edit.linetext('% to send pet', 'maMinion', 'stPctPetEngage', tip.stPctPetEngage, {sb=false, rb=false, list=false})
            edit.linetext('illusion', 'maMinion', 'stPetIllusion', tip.stPetIllusion, {sb=false, rb=false, list=false})
            edit.linetext('shrink item', 'maMinion', 'stPetShrink', tip.stPetShrink, {sb=false, rb=false, list=false})
            edit.linetext('% to send swarm', 'maMinion', 'stPctSwarmEngage', tip.stPctSwarmEngage, {sb=false, rb=false, list=false})
            edit.linetext('weapons', 'maMinion', 'stPetWeapon', tip.stPetWeapon, {sb=false, rb=false, list=false})
          ImGui.Columns()
          ImGui.NewLine()        
          indent(1,2)        
        end
      end
    end,

    miscdps = function ()

      if ImGui.CollapsingHeader('/miscdps') then
        ImGui.NewLine()
        edit.controllist('MiscDPS', 50, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine()  

      end      
    end,

    melee = function ()
      if ImGui.CollapsingHeader('/melee') then
        ImGui.NewLine()
        edit.controllist('Melee', 12, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine()  

      end      
    end,

    nuke = function ()
      if ImGui.CollapsingHeader('/nuke') then
        ImGui.NewLine()
        indent(1,1)

        ImGui.Columns(2, 'nocurename', false)
          edit.switchbox('loop', 'maNuke', 'swNukeLoop', tip.swNukeLoop)
          edit.switchbox('sit', 'maNuke', 'swNukeWhackAMole', tip.swNukeWhackAMole)
          edit.linetext('delay time', 'maNuke', 'stNukeDelay', tip.stNukeDelay, {sb=false, rb=false, list=false})
          edit.linetext('pct stop', 'maNuke', 'stPctStopNuke', tip.stPctStopNuke, {sb=false, rb=false, list=false})
        ImGui.NextColumn()
        ImGui.Columns()
        indent(1,2)

        ImGui.NewLine()
        edit.controllist('Nuke', 20, {alternate=true, alias=false, tag=true, name='list'})
        ImGui.NewLine()  

      end
    end,

    override = function ()

      if ImGui.CollapsingHeader('/override') then
        ImGui.NewLine()
        indent(1,1)
        
        ImGui.Columns(3, 'overridecol', false)
          edit.switchbox('LoS', 'maOver', 'swOverLOS', tip.swOverLOS)
          edit.switchbox('pct engage', 'maOver', 'swOverPctEngage', tip.swOverPctEngage)
          edit.switchbox('loot', 'maOver', 'swOverLoot', tip.swOverLoot)
          edit.switchbox('safe names', 'maOver', 'swOverSafeNames', tip.swOverSafeNames)
        ImGui.NextColumn()
          edit.switchbox('train spell', 'maOver', 'swOverTrainSpell', tip.swOverTrainSpell)
          edit.switchbox('env auto', 'maOver', 'swOverEnvAuto', tip.swOverEnvAuto)
          edit.switchbox('DS check', 'maOver', 'swOverDSCheck', tip.swOverDSCheck)
          edit.switchbox('NAV check', 'maOver', 'swOverNavCheck', tip.swOverNavCheck)
        ImGui.NextColumn()
          edit.switchbox('group ass', 'maOver', 'swOverGroupAss', tip.swOverGroupAss)
          edit.switchbox('splash hurt', 'maOver', 'swOverSplashHurt', tip.swOverSplashHurt)
          edit.switchbox('target clear', 'maOver', 'swTargetClear', tip.swTargetClear)
          edit.switchbox('max melee', 'maOver', 'swOverMaxMelee', tip.swOverMaxMelee)
        ImGui.Columns()
        ImGui.NewLine()
        indent(1,2)
      end 
      
    end,

    pred = function ()
      if ImGui.CollapsingHeader('/pred') then
      end
      
    end,

    pull = function ()
      if ImGui.CollapsingHeader('/pull') then
        ImGui.NewLine()
        indent(1,1)

        ImGui.Columns(2, 'col_pull', false)
          edit.linetext('rad', 'maPull', 'stPullRadius', tip.stPullRadius, {sb=false, rb=false, list=false})
          edit.linetext('zrad', 'maPull', 'stPullZRadius', tip.stPullZRadius, {sb=false, rb=false, list=false})
          edit.linetext('nav stop', 'maPull', 'stPullNavStopDistance', tip.stPullNavStopDistance, {sb=false, rb=false, list=false})
          edit.linetext('nav var', 'maPull', 'stPullNavVariance', tip.stPullNavVariance, {sb=false, rb=false, list=false})
          edit.selectlist('mode', 'maPull', 'stPullMode', { 'base', 'pet', 'int', 'nav', 'multi', 'watch' })
          edit.selectlist('with', 'maPull', 'stPullWith', { 'melee', 'range', 'other' })
        ImGui.NextColumn()
          edit.linetext('range bando', 'maPull', 'stRangeBandolier', tip.stRangeBandolier, {sb=false, rb=false, list=false})
          edit.linetext('outrun', 'maPull', 'stPullOutrunRange', tip.stPullOutrunRange, {sb=false, rb=false, list=false})
          edit.linetext('chain', 'maPull', 'stCountChainPull', tip.stCountChainPull, {sb=false, rb=false, list=false})
          edit.linetext('pet watch', 'maPull', 'stPullPetWatch', tip.stPullPetWatch, {sb=false, rb=false, list=false})
        ImGui.Columns()
        
        ImGui.Columns(2, 'col_pull2', false)      
          edit.switchbox('active', 'maPull', 'swPull', tip.swPull)
          edit.switchbox('navlos', 'maPull', 'swPullNavLoS', tip.swPullNavLoS)
          edit.switchbox('pathlogic', 'maPull', 'swNavPathLogic', tip.swNavPathLogic)
        ImGui.NextColumn()
          edit.switchbox('healcheck', 'maPull', 'swPullHealCheck', tip.swPullHealCheck)
          edit.switchbox('sethome', 'maPull', 'swPullSetHome', tip.swPullSetHome)
        ImGui.Columns()

        indent(1,2)
        ImGui.NewLine()

        if ImGui.TreeNode('hard stop') then 
          ImGui.Columns(2, 'hardstopstuff', false)
            edit.linetext('pct', 'maPull', 'stPctHardStop', tip.stPctHardStop, {sb=false, rb=false, list=false})
            edit.linetext('duration', 'maPull', 'stHardStopDuration', tip.stHardStopDuration, {sb=false, rb=false, list=false})
            edit.switchbox('rez', 'maPull', 'swHardStopRez', tip.swHardStopRez)
          ImGui.NextColumn()
          ImGui.Columns()
          ImGui.TreePop()
          ImGui.NewLine()
        end
        edit.controllist('Pull', 12, {alternate=false, alias=false, tag=true, name='pull other list'})
        ImGui.NewLine()

      end
    end,

    rest = function ()
       if ImGui.CollapsingHeader('/rest') then
        ImGui.NewLine()
        indent(1,1)
        ImGui.Columns(2, 'homebase', false)
            edit.switchbox('to full', 'maRest', 'swRestFull', tip.swRestFull)
            edit.switchbox('use rods', 'maRest', 'swRestModRod', tip.swRestModRod)
            edit.switchbox('check buffs', 'maRest', 'swRestBuff', tip.swRestBuff)
            edit.switchbox('in combat', 'maRest', 'swRestCombat', tip.swRestCombat)
            edit.switchbox('check healing', 'maRest', 'swRestCheckHealth', tip.swRestCheckHealth)
            edit.switchbox('in raids', 'maRest', 'swRestInRaid', tip.swRestInRaid)
          ImGui.NextColumn()
            edit.linetext('pct rest', 'maRest', 'stPctRest', tip.stPctRest, {sb=false, rb=false, list=false})
            edit.linetext('radius check', 'maRest', 'stRestRadius', tip.stRestRadius, {sb=false, rb=false, list=false})
          ImGui.Columns()  
        ImGui.NewLine()
          edit.linetext('spawn search', 'maRest', 'stRestSpawnSearch', tip.stRestSpawnSearch, {sb=false, rb=false, list=false})
        ImGui.NewLine()
        indent(1,2)
      end
    end,

    rez = function ()
      if ImGui.CollapsingHeader('/rez') then
        ImGui.NewLine()
        indent(1,1)
        ImGui.Columns(2, 'rezstuff', false)
          edit.linetext('rez radius', 'maRez', 'stMaxRezRange', tip.stMaxRezRange,  {sb=false, rb=false, list=false})
          edit.linetext('summon range', 'maHard', 'stRezSummonRange', tip.stRezSummonRange,  {sb=false, rb=false, list=false})
          edit.selectlist('lowest to take', 'maRez', 'stPctMinRez', { '10', '20', '35', '50', '60', '75', '90', '93', '96' })
          edit.switchbox('IC', 'maRez', 'swRezIC', tip.swRezIC)
          edit.switchbox('OOC', 'maRez', 'swRezOOC', tip.swRezOOC)
        ImGui.NextColumn()
          edit.switchbox('dannet', 'maRez', 'swRezDanNet', tip.swRezDanNet)
          edit.switchbox('everyone', 'maRez', 'swRezEveryone', tip.swRezEveryone)
          edit.switchbox('use token', 'maRez', 'swRezToken', tip.swRezToken)
          edit.switchbox('take', 'maRez', 'swRezTake', tip.swRezTake)
          edit.switchbox('take call', 'maRez', 'swRezTakeCall', tip.swRezTakeCall)
        ImGui.Columns()   
        ImGui.NewLine()   

        edit.linetext('item/aa/spell rez in combat', 'maRez', 'lsRezIC', tip.lsRezIC,  {sb=false, rb=true, list=true})
        edit.linetext('item/aa/spell rez out of combat', 'maRez', 'lsRezOOC', tip.lsRezOOC,  {sb=false, rb=true, list=true})
        edit.linetext('people to never rez', 'maRez', 'lsNoRezToon', tip.lsNoRezToon,  {sb=false, rb=false, list=true})
        buttons_adc_target('lsNoRezToon')
        
        
                
        indent(1,2)
        ImGui.NewLine()   
        if ImGui.TreeNode('timers') then  
          ImGui.Columns(2, 'reztimers', false)
            edit_text_perm('retry on rez fail', 'maHard', 'stRezFail', tip.stRezFail)
            edit_text_perm('retry on token fail', 'maHard', 'stRezFailToken', tip.stRezFailToken)
            edit_text_perm('mark no rez', 'maHard', 'stRezIgnoreFucktards', tip.stRezIgnoreFucktards)
            edit_text_perm('retry on success', 'maHard', 'stRezSuccess', tip.stRezSuccess)
          ImGui.NextColumn()
          ImGui.Columns()   
          ImGui.NewLine()   
          ImGui.TreePop() 
        end

        edit.controllist('Rez', 8, {alternate=false, alias=false, tag=false, name='corpse spawn search'})

        ImGui.NewLine()
      end
      
    end,

    sash = function ()
      if ImGui.CollapsingHeader('/sash') then
      end
    
    end,

    song = function ()
      if class[mq.TLO.Me.Class.ShortName()][sing] then

        if ImGui.CollapsingHeader('/song') then
          ImGui.NewLine()
          edit.controllist('Song', 20, {alternate=true, alias=false, tag=true, name='list'})
          ImGui.NewLine()          
        end
      end
    end,

    tc = function ()
      if ImGui.CollapsingHeader('/tc') then
      end
       
    end,

    ttl = function ()
      --if ImGui.CollapsingHeader('/ttl') then
      --end
      
    end,

    watch = function ()
      if ImGui.CollapsingHeader('/watch') then
        ImGui.NewLine()
        indent(1,1)
        ImGui.Columns(2, 'watcher', false)       
          edit.switchbox('enable watching', 'maWatch', 'swWatch', tip.swWatch)
          edit.switchbox('beep on spawn', 'maWatch', 'swWatchBeep', tip.swWatchBeep)
          edit.linetext('timer check', 'maTimer', 'tiCheck_Watch', tip.tiCheck_Watch, {sb=false, rb=false, list=false})

        ImGui.NextColumn()
        ImGui.Columns()   
        ImGui.NewLine() 
          edit.linetext('spawn list', 'maWatch', 'lsWatch', tip.lsWatch, {sb=false, rb=false, list=true})
          buttons_adc_target ('lsWatch')             
        indent(1,2)

      end
        ImGui.NewLine()

    end
      


  }

