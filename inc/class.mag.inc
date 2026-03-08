|***
 * entropy
 * class.mag.inc
 ***|



|***
 * note: primary initilization of all magician non shared data
 * use: i think we've been over this once already
 ***|
sub class_init(bool _debug)
  DEBUG \atclass_init\ax()

  /if (${maDebug.Find[init].Value}) {
    /declare _boottimestart int local ${MacroQuest.Running}
  }

  /call set_data ${_debug} maData stSpire                             map outer "Spire of the Elements"
  /call set_data ${_debug} maData stSynergy                           map outer "Conjurer's Synergy"
  /call set_data ${_debug} maData stFade                              map outer "Drape of Shadows"

  /call set_data_map ${_debug} maChr stAlliance                       PREGEN|1                      "${auxna} class Alliance spell"
  /call set_data_map ${_debug} maChr stDichotomic                     PREGEN|1                      "${auxna} Dichotomic spell"
  /call set_data_map ${_debug} maChr stCoHGroup                       PREGEN|1                      "${auxna} group target call of the hero"
  /call set_data_map ${_debug} maChr stCoH                            PREGEN|1                      "${auxna} single target call of the hero"

  | pet element type
  /call set_data_map ${_debug} maChr stMinionElementType              FALSE                         "${auxna} type of pet; Air, Earth, Fire, Water"
  /call set_data ${_debug} FALSE lsElementType                        list outer Air|Earth|Fire|Water

  /invoke ${set_data_timer[${_debug}, Check_Gather, 3s]}
  /call set_data_map ${_debug} maChr stGather                         PREGEN|1                      "${auxna} spell or item to use to recover manna (not rods or aas)"
  /call set_data_map ${_debug} maChr stPctGather                      0                             "${auxnum} percent to start using gather tricks"
  /call set_data_map ${_debug} maChr swSelfRod                        FALSE                         "${auxna} use meth pipe or not"
  /call set_data_map ${_debug} maChr stSelfRod                        FALSE                         "${auxna} self only meth pipe"
  

  /call set_data_map ${_debug} maChr stNukeServant                    PREGEN|1                      "${auxna} the little spam pets mages love to use so much."

  /invoke ${set_data_timer[${_debug}, Check_Cauldron, 5m]}
  /call set_data_map ${_debug} maChr swCauldron                       FALSE                         "${auxsw} click cauldron to get prizes or not?"
  /call set_data_map ${_debug} maChr stCauldron                       FALSE                         "${auxna} name of the cauldron item you wish to use"

  | twincast spell
  /call set_data_map ${_debug} maChr stTC                             PREGEN|1                      "${auxna} twincast spell"
 
  | class order lists
  /call set_data_list ${_debug} maChr lsOrderClassBase                checkminion|manarecover|gather                                    "${auxli} class base loop start"
  /call set_data_list ${_debug} maChr lsOrderClassPre                 EMPTY                                                             "${auxli} class pre combat"
  /call set_data_list ${_debug} maChr lsOrderClass                    melee|debuff|pet|burn|swarm|dot|nuke|misc|item                    "${auxli} class active combat order"
  /call set_data_list ${_debug} maChr lsOrderClassPost                manarecover|gather                                                "${auxli} class post combat "
  
  | summon DPS clickies
  /call set_data_map ${_debug} maChr swIcebound                       FALSE                         "${auxsw} summon Icebound clickie"
  /call set_data_map ${_debug} maChr stIcebound                       FALSE                         "${auxna} name of Icebound spell"
  /call set_data_map ${_debug} maChr swFirebound                      FALSE                         "${auxsw} summon Firebound clickie"
  /call set_data_map ${_debug} maChr stFirebound                      FALSE                         "${auxna} name of Firebound spell"
 
  | AAs
  /call set_data_map ${_debug} maChr stAAUnity                        PREGEN|1                      "${auxna} Thaumaturge's Unity AA"

  /call set_data_map ${_debug} maChr swAAThaumaturgesFocus            FALSE                         "${auxsw} switch for Thaumaturge's Focus AA"
  /call set_data_map ${_debug} maChr stAAThaumaturgesFocus            PREGEN|1                      "${auxna} Thaumaturge's Focus AA"

  /call set_data_map ${_debug} maChr swAASilentCasting                FALSE                         "${auxsw} switch for Silent Casting AA"
  /call set_data_map ${_debug} maChr stAASilentCasting                PREGEN|1                      "${auxna} Silent Casting AA"

  /call set_data_map ${_debug} maChr swAAHeartofSkyfire               FALSE                         "${auxsw} switch for Heart of Skyfire AA"
  /call set_data_map ${_debug} maChr stAAHeartofSkyfire               PREGEN|1                      "${auxna} Heart of Skyfire AA"

  /call set_data_map ${_debug} maChr swAAServantofRo                  FALSE                         "${auxsw} switch for Servant of Ro AA"
  /call set_data_map ${_debug} maChr stAAServantofRo                  PREGEN|1                      "${auxna} Servant of Ro AA"

  /call set_data_map ${_debug} maChr swAACompanionsFury               FALSE                         "${auxsw} switch for Companion's Fury AA"
  /call set_data_map ${_debug} maChr stAACompanionsFury               PREGEN|1                      "${auxna} Companion's Fury AA"

  /call set_data_map ${_debug} maChr swAAHostoftheElements            FALSE                         "${auxsw} switch for Host of the Elements AA"
  /call set_data_map ${_debug} maChr stAAHostoftheElements            PREGEN|1                      "${auxna} Host of the Elements AA"

  /call set_data_map ${_debug} maChr swAAElementalConversion          FALSE                         "${auxsw} switch for Elemental Conversion AA"
  /call set_data_map ${_debug} maChr stAAElementalConversion          PREGEN|1                      "${auxna} Elemental Conversion AA"

  /call set_data_map ${_debug} maChr swAAForcefulRejuvenation         FALSE                         "${auxsw} switch for Forceful Rejuvenation AA"
  /call set_data_map ${_debug} maChr stAAForcefulRejuvenation         PREGEN|1                      "${auxna} Forceful Rejuvenation AA"

  /call set_data_map ${_debug} maChr swAAHostintheShell               FALSE                         "${auxsw} switch for Host in the Shell AA"
  /call set_data_map ${_debug} maChr stAAHostintheShell               PREGEN|1                      "${auxna} Host in the Shell AA"

  /call set_data_map ${_debug} maChr swAAImprovedTwincast             FALSE                         "${auxsw} switch for Improved Twincast AA"
  /call set_data_map ${_debug} maChr stAAImprovedTwincast             PREGEN|1                      "${auxna} Improved Twincast AA"

  /call set_data_map ${_debug} maChr swAAMendCompanion                FALSE                         "${auxsw} switch for Mend Companion AA"
  /call set_data_map ${_debug} maChr stAAMendCompanion                PREGEN|1                      "${auxna} Mend Companion AA"

  /call set_data_map ${_debug} maChr swAAForceofElements              FALSE                         "${auxsw} switch for Force of Elements AA"
  /call set_data_map ${_debug} maChr stAAForceofElements              PREGEN|1                      "${auxna} Force of Elements AA"

  /call set_data_map ${_debug} maChr swAAFocusofArcanum               FALSE                         "${auxsw} switch for Focus of Arcanum AA"
  /call set_data_map ${_debug} maChr stAAFocusofArcanum               PREGEN|1                      "${auxna} Focus of Arcanum AA"


  /if (${maDebug.Find[init].Value}) {
    OUT \agset_${Me.Class.ShortName}\ax${sep}\a-w${Math.Calc[((${MacroQuest.Running}-${_boottimestart}) / 10) / 60]}s\ax
    /mqp
  }

/return TRUE





|***
 * note: main magician routine
 * use:
 ***|
sub class_main(bool _debug)
  DEBUG \atclass_main\ax()

  /if (AUTO && !ENGINE3) {
    /call class_cycle lsOrderClassBase
    /if (${maChr.Find[swCauldron].Value}) /call check_cauldron  ${maDebug.Find[cauldron].Value}
  } else /if (AUTO && ENGINE3) {
    /if (${SubDefined[e3_pre_${Me.Class.ShortName}]}) {
      /call e3_pre_${Me.Class.ShortName} ${maDebug.Find[e3].Value}
    }
  }

  /while (${check_combat_status[${maDebug.Find[status].Value}]}) {
    /call class_cycle lsOrderClassPre
    /if (!${check_class_loop[${maDebug.Find[status].Value}]}) /return FALSE

    /if (VALID && !ENGINE3) {
      /call class_cycle lsOrderClass
    } else /if (VALID && ENGINE3) {
      /if (${SubDefined[e3_combat_${Me.Class.ShortName}]}) {
        /call e3_combat_${Me.Class.ShortName} ${maDebug.Find[e3].Value}
      }
    }
    /if (AUTO && !ENGINE3) {
      /call class_cycle lsOrderClassPost
    } else /if (AUTO && !ENGINE3) {
      /if (${SubDefined[e3_post_${Me.Class.ShortName}]}) {
        /call e3_post_${Me.Class.ShortName} ${maDebug.Find[e3].Value}
      }
    }
  }
/return TRUE



|***
 * note: Combat skills, Disciplines and Alternate abilities.
 * use: /call misc_combat
 ***|
sub misc_combat(bool _debug, spawn _spawn)
  DEBUG \atmisc_combat\ax(\a-w${_spawn.ID}\ax)

  SPAWNDEAD
  CHECKEXIT
  GETINPUT

  /if (SWARM || PET) {
    /call send_pet ${maDebug.Find[sic].Value} ${_spawn.ID}
  }
  /if (AUTO && MELEE) {
    /invoke ${spawn_face[${_spawn.ID}]}
  }

  | /call cast_cycle_miscdps ${maDebug.Find[agro].Value} ${_spawn.ID}

  | Force of Elements AA
  /if (${cast_data[${_debug}, "${maChr.Find[stAAForceofElements].Value}"]} && ${maChr.Find[swAAForceofElements].Value}) {
    /call cast ${_debug} ${_spawn.ID} FALSE
    /return TRUE
  }
  
  | icebound summon and click
  /if (${maChr.Find[swIcebound].Value}) {

    /if (${Cursor.ID} == ${Spell[${Spell[${maChr.Find[stIcebound].Value}].RankName}].Base[1]}) {
      /call check_cursor ${_debug} getoffthedamncursor
    }    
    
    /if (!${FindItem[${Spell[${Spell[${maChr.Find[stIcebound].Value}].RankName}].Base[1]}].ID}) {
      /if (${cast_data[${_debug}, "${maChr.Find[stIcebound].Value}"]}) {
        /call cast ${_debug} ${Me.ID} FALSE    
        /delay 2.5s !${Me.Casting.ID}
        /autoinventory
      }
    } else /if (${FindItem[${Spell[${Spell[${maChr.Find[stIcebound].Value}].RankName}].Base[1]}].ID}) {
      /if (${cast_data[${_debug}, "${FindItem[${Spell[${Spell[${maChr.Find[stIcebound].Value}].RankName}].Base[1]}].Name}"]}) {
        /call cast ${_debug} ${_spawn.ID} FALSE    
        /return TRUE
      }
    }
    /if (${Cursor.ID} == ${Spell[${Spell[${maChr.Find[stIcebound].Value}].RankName}].Base[1]}) {
      /call check_cursor ${_debug} getoffthedamncursor
    }
  }


  | firebound summon and click
  /if (${maChr.Find[swFirebound].Value}) {

    /if (${Cursor.ID} == ${Spell[${Spell[${maChr.Find[stFirebound].Value}].RankName}].Base[1]}) {
      /call check_cursor ${_debug} getoffthedamncursor
    }   
        
    /if (!${FindItem[${Spell[${Spell[${maChr.Find[stFirebound].Value}].RankName}].Base[1]}].ID}) {
      /if (${cast_data[${_debug}, "${maChr.Find[stFirebound].Value}"]}) {
        /call cast ${_debug} ${Me.ID} FALSE    
        /delay 2.5s !${Me.Casting.ID}
        /autoinventory
      }
    } else /if (${FindItem[${Spell[${Spell[${maChr.Find[stFirebound].Value}].RankName}].Base[1]}].ID}) {
      /if (${cast_data[${_debug}, "${FindItem[${Spell[${Spell[${maChr.Find[stFirebound].Value}].RankName}].Base[1]}].Name}"]}) {
        /call cast ${_debug} ${_spawn.ID} FALSE    
        /return TRUE
      }
    }

    /if (${Cursor.ID} == ${Spell[${Spell[${maChr.Find[stFirebound].Value}].RankName}].Base[1]}) {
      /call check_cursor ${_debug} getoffthedamncursor
    }    
    
  }

/return TRUE



|***
 * note: "One can never have enough socks." - dumbledor
 * use:  when you or your agro whore pet get hurt
 ***|
sub check_heal(bool _debug, string _type)
  DEBUG \atcheck_heal\ax(\a-w${_type}\ax)

  CHECKEXIT

  /call spawn_hurt ${maDebug.Find[hurt].Value} ${_type}

  | if no one is hurt. back to the start
  /if (!${hurtCount}) {
    SETHUD
    /return TRUE
  }

  /if (!SAFEZONE) {

    | group healing
    /if (${Select[${_type},group]} && ${hurtCount}) {

      | group heal
      /if (${maHeal.Find[stCountHealGroup].Value} && ${hurtCount} >= ${maHeal.Find[stCountHealGroup].Value}) {
        /call cast_cycle_heal ${_debug} 0 group
      }
    }

    /if (${Select[${_type},pet]} && ${maMinion.Find[swPet].Value} && ${maChr.Find[swAAMendCompanion].Value}) {
      /if (${hurtPctHP} <= ${maHeal.Find[stHealPoint${hurtCLS}].Value}*.PCTHO) {
        /if (${cast_data[${_debug}, "${maChr.Find[stAAMendCompanion].Value}"]}) {
          /call cast ${_debug} ${Pet.ID} FALSE
        }
      }
      /call cast_cycle_heal ${_debug} ${Pet.ID} minion
    }
  }

  /if (!${spawn_hurt[${maDebug.Find[hurt].Value}, ${_type}]}) {
    /return FALSE
  }

  /call cast_cycle_heal ${_debug} ${hurtData.ID} single
  SETHUD

/return TRUE



|***
 * note: we like fire...
 * use: establish all comp/trigger skills
 ***|
sub burn(bool _debug, spawn _spawn)
  DEBUG \atburn\ax(\a-w${_spawn.ID}\ax)

  SPAWNDEAD
  CHECKEXIT
  GETINPUT

  /if (SWARM || PET) {
    /call send_pet ${maDebug.Find[sic].Value} ${_spawn.ID}
  }
  /if (AUTO && MELEE) {
    /invoke ${spawn_face[${_spawn.ID}]}
  }

  /if (ENGINE2) {
    /call cast_cycle_burn ${maDebug.Find[burn].Value} ${_spawn.ID}
    /return TRUE
  }

  /if (${cast_data[${_debug}, "${maChr.Find[stAAFocusofArcanum].Value}"]} && ${maChr.Find[swAAFocusofArcanum].Value}) {
    /call cast ${_debug} 0 FALSE
  }

  | alternate twincast
  /if (!${Me.Buff[${maChr.Find[stTC].Value}].ID} && ${maChr.Find[swAAImprovedTwincast].Value}) {
    /if (${cast_data[${_debug}, "${maChr.Find[stAAImprovedTwincast].Value}"]}) {
      /call cast ${_debug} 0 FALSE
    }
  } else /if (!${Me.Buff[Improved Twincast].ID} && !${Me.AltAbilityReady[Improved Twincast]}) {
    /if (${cast_data[${_debug}, "${maChr.Find[stTC].Value}"]}) {
      /call cast ${_debug} 0 FALSE
    }
  }

  | direct damage bonus
  /if (${Target.PctHPs} > 10) {
    /if (${Me.Buff[${maChr.Find[stAAThaumaturgesFocus].Value}].ID}) {
      /if (${cast_data[${_debug}, "${maChr.Find[stAAHeartofSkyfire].Value}"]} && ${maChr.Find[swAAHeartofSkyfire].Value}) {
        /call cast ${_debug} 0 FALSE
      }
    } else /if (!${Me.Buff[${maChr.Find[stAAHeartofFlames].Value}].ID} && !${Me.AltAbilityReady[${maChr.Find[stAAHeartofSkyfire].Value}]}) {
      /if (${cast_data[${_debug}, "${maChr.Find[stAAThaumaturgesFocus].Value}"]} && ${maChr.Find[swAAThaumaturgesFocus].Value}) {
        /call cast ${_debug} 0 FALSE
      }
    } else /if (!${Me.AltAbilityReady[${maChr.Find[stAAHeartofSkyfire].Value}]} && !${Me.Buff[${maChr.Find[stAAHeartofSkyfire].Value}].ID} && !${Me.AltAbilityReady[${maChr.Find[stAAThaumaturgesFocus].Value}]} && !${Me.Buff[${maChr.Find[stAAThaumaturgesFocus].Value}].ID}) {
      /call cast_glyph ${maDebug.Find[glyph].Value}
      | Intensity of the Resolute AA 4 hour reuse
      /call cast_AA_intensity ${maDebug.Find[intensity].Value}

    }
  }

  /call cast_AA_spire ${maDebug.Find[spire].Value}

  /if (${cast_data[${_debug}, "${maChr.Find[stAASilentCasting].Value}"]} && ${maChr.Find[swAASilentCasting].Value}) {
    /call cast ${_debug} 0 FALSE
  }

  | pet AAs
  /if (PET) {
    /if (${cast_data[${_debug}, "${maChr.Find[stAAServantofRo].Value}"]} && ${maChr.Find[swAAServantofRo].Value}) {
      /call cast ${_debug} ${_spawn.ID} FALSE
    }
    /if (${cast_data[${_debug}, "${maChr.Find[stAACompanionsFury].Value}"]} && ${maChr.Find[swAACompanionsFury].Value}) {
      /call cast ${_debug} 0 FALSE
    }
    /if (${cast_data[${_debug}, "${maChr.Find[stAAHostintheShell].Value}"]} && ${maChr.Find[swAAHostintheShell].Value}) {
      /call cast ${_debug} 0 FALSE
    }

  }

  | swarm pets
  /if (SWARM) {
    /if (${cast_data[${_debug}, "${maChr.Find[stAAHostoftheElements].Value}"]} && ${maChr.Find[swAAHostoftheElements].Value}) {
      /call cast ${_debug} ${_spawn.ID} FALSE
    }
  }

/return TRUE



|***
 * note: All that you buy, beg, borrow or steal.
 * use:
 ***|
sub check_gather(bool _debug)
  DEBUG \atcheck_gather\ax()

  /invoke ${set_data_timer[${_debug}, Check_Gather, RESTART]}

  /if (${Me.PctMana} >= ${maChr.Find[stPctGather].Value}*.PCTHO) {
    DEBUG ${sep} manna: ${Me.PctMana} >= ${maChr.Find[stPctGather].Value}*.PCTHO
    /return FALSE
  }

  CHECKEXIT
  GETINPUT

  /if (${Me.Buff[Improved Twincast].ID} || ${Me.Buff[Twincast].ID}) {
    DEBUG ${sep}twincast running. get manna later
    /return FALSE
  }

  | pet consumption for manna
  /if (${Pet.ID}) {
    /if (${cast_data[${_debug}, "${maChr.Find[stAAElementalConversion].Value}"]} && ${maChr.Find[swAAElementalConversion].Value}) {
      /call cast ${_debug} 0 FALSE
    }
  }

  /if (${Me.PctMana} >= ${maChr.Find[stPctGather].Value}*.PCTHO) {
    DEBUG ${sep} manna: ${Me.PctMana} >= ${maChr.Find[stPctGather].Value}*.PCTHO
    /return FALSE
  }

  /if (${cast_data[${_debug}, "${maChr.Find[stGather].Value}"]}) {
    /call cast ${_debug} 0 FALSE
  }


  /if (${Me.PctMana} >= ${maChr.Find[stPctGather].Value}*.PCTHO) {
    /return FALSE
  }

  /if (!${cast_data[${_debug}, "${maChr.Find[stGather].Value}"]} && !${Me.AltAbilityReady[${maChr.Find[stAAForcefulRejuvenation].Value}]} && ${maChr.Find[swAAForcefulRejuvenation].Value}) {
    /return FALSE
  }

  | force rejuv if we can proc gather spell again
  /if (!${cast_data[${_debug}, "${maChr.Find[stGather].Value}"]}) {
    /if (${cast_data[${_debug}, "${maChr.Find[stAAForcefulRejuvenation].Value}"]}) {
      /call cast ${_debug} 0 FALSE
    }
  }

  /if (${cast_data[${_debug}, "${maChr.Find[stGather].Value}"]}) {
    /call cast ${_debug} 0 FALSE
  }

/return TRUE



|***
 * note: mage execution for /coh command from other toons
 * use: /call_of_the_hero [group]
 ***|
#bind control_mag_coh /call_of_the_hero
sub Bind_control_mag_coh(string _sender, string _verbage, bool _debug)
  DEBUG \atBind_control_mag_coh\ax(\a-w${_sender}, ${_verbage}\ax)

  /if (${_verbage.Left[1].Equal[-]}) {
    /lua run get_help coh ${_type.Right[1]}
    /return TRUE
  }

  /if (${_verbage.Equal[group]}) {
    /call set_spell_to ${_debug} TRUE "${maChr.Find[stCoHGroup].Value}" ${maEnv.Find[stBuffGem].Value} TRUE
    /makemevisible

    /if (${cast_data[${_debug}, "${maChr.Find[stCoHGroup].Value}"]}) {
      /call cast ${_debug} 0 FALSE
    }
  } else {
    /delay 15s ${Me.AltAbilityReady[${maChr.Find[stCoH].Value}]}
    /makemevisible
    /if (${cast_data[${_debug}, "${maChr.Find[stCoH].Value}"]}) {
      /call cast ${_debug} ${Spawn[pc ${_sender}].ID} FALSE
    }
  }
/return TRUE



|***
 * note: summon cauldron item
 * use: auto on timer
 ***|
sub check_cauldron(bool _debug)
  DEBUG \atcheck_cauldron\ax()
  
  | no cauldrons in combat
  /if (${Me.CombatState.Equal[combat]}) {
    /invoke ${set_timer[${_debug}, Check_Cauldron, RESTART]}
    /return FALSE
  }
  
  /if (!${Bool[${maChr.Find[stCauldron].Value}]}) {
    OUT You need to set up your cauldron if you want to use it.
    /invoke ${set_switch_env[${_debug}, swCauldron, TRUE, FALSE]}
    /return FALSE
  }

  /if (!${cast_data[${_debug}, "${maChr.Find[stCauldron].Value}"]}) {
    /invoke ${set_timer[${_debug}, Check_Cauldron, ${Math.Calc[${FindItem[${maChr.Find[stCauldron].Value}].Timer.TotalMinutes}]}m]}
    /return FALSE
  }

  CHECKEXIT
  CHECKTIE

  /call cast ${_debug} 0 FALSE

  /while (${Cursor.ID}) {
    /call check_cursor ${_debug} CLEAR
    /delay 5
  }

  /invoke ${set_timer[${_debug}, Check_Cauldron, ${Math.Calc[${FindItem[${maChr.Find[stCauldron].Value}].Timer.TotalMinutes} + 1]}m]}

/return TRUE



|***
 * note: self only modrods
 * use: falls under do_mana_recovery()
 ***|
sub self_modrod(bool _debug)

  /if (!${maChr.Find[swSelfRod].Value}) {
    DEBUG ${sep} dont use self mod rods
    /return FALSE
  }

  | summon if we dotn have
  /if (!${FindItem[${Spell[${Spell[${maChr.Find[stSelfRod].Value}].RankName}].Base[1]}].ID}) {
    /if (${cast_data[${_debug}, "${maChr.Find[stSelfRod].Value}"]}) {
      /call cast ${_debug} 0 FALSE    
      /delay 2.5s !${Me.Casting.ID}
      /autoinventory
    }
  }

/return TRUE





|***
 * note: 
 * use: /sendpet (with a target)
 ***|
#bind mage_sendpet /sendpet
sub Bind_mage_sendpet()
  /declare _debug bool local FALSE
  /declare _spawn spawn local 
  /vardata _spawn Target.ID
  /declare _dangerous bool local TRUE  

  /if (${_spawn.ID}) {
    /if (${_spawn.ConColor.Equal[RED]}) {
    } else /if (${_spawn.ConColor.Equal[YELLOW]}) {
    } else /if (${_spawn.ConColor.Equal[WHITE]}) {
    } else /if (${_spawn.ConColor.Equal[BLUE]}) {
    } else /if (${_spawn.ConColor.Equal[LIGHT BLUE]}) {
      /varset _dangerous FALSE
    } else /if (${_spawn.ConColor.Equal[GREEN]}) {
      /varset _dangerous FALSE
    } else /if (${_spawn.ConColor.Equal[GREY]}) {
      /varset _dangerous FALSE
    }  
  }
 
  /if (${_spawn.ID}) {
    /squelch /pet attack
    
    /if (SWARM) {
      /squelch /pet swarm

      /if (${_dangerous}) {
        | cast rage pet if swarms are enabled
        /if (${cast_data[${_debug}, "${maChr.Find[stNukeServant].Value}"]}) {
          /call cast ${_debug} ${_spawn.ID} FALSE
        }
      }
    }    
  }

  /if (${_dangerous}) {
    |  Runes cast
    /if (${cast_data[${_debug}, "Host in the Shell"]}) {
      /call cast ${_debug} 0 FALSE
    }
    /if (${cast_data[${_debug}, "Second Wind Ward"]}) {
      /call cast ${_debug} 0 FALSE
    }
    /if (${cast_data[${_debug}, "Companion's Aegis"]}) {
      /call cast ${_debug} 0 FALSE
    }
    /if (${cast_data[${_debug}, "Companion's Fortification"]}) {
      /call cast ${_debug} 0 FALSE
    }
  }
  
/return TRUE



|***
 * note: class control
 * use: /chr
 ***|
sub set_control(string _type, string _verbage, string _verbage2, bool _debug)
  DEBUG \atset_control\ax(\a-w${_type}, "${_verbage}", ${_verbage2}\ax)

  | set concussion use %
  /if (${_type.Equal[concussion]}) {
    /if (!${set_control_num_range[${_debug}, stPctConcussion, "${_verbage}", 0, 99]}) /return FALSE

  | minion type
  } else /if (${_type.Equal[pettype]}) {

    /if (!${Bool[${_verbage}]} || !${lsElementType.Contains[${_verbage.Left[1].Upper}${_verbage.Right[-1].Lower}]}) {
      /declare _out string local
      /declare _lipt listiterator local
      /vardata _lipt lsElementType.First.Clone
      /while (!${_lipt.IsEnd}) {
        /varset _out ${_out} ${If[${lsElementType.First.Value.Equal[${_lipt.Value}]},,${dot}]} ${If[${maChr.Find[stMinionElementType].Value.Equal[${_lipt.Value}]},${good}${_lipt.Value}\ax,${info}${_lipt.Value}\ax]}
        /invoke ${_lipt.Advance}
      }
      OUT /chr pettype ${dot} ${_out}
      /return FALSE
    } else {
      /invoke ${do_raw_edit[${_debug}, SILENT, stMinionElementType, "${_verbage.Left[1].Upper}${_verbage.Right[-1].Lower}"]}
    }

  | set ae on/off / count
  } else /if (${_type.Equal[cauldron]}) {
    /if (${_verbage.Equal[active]}) {
      /invoke ${set_switch_env[${_debug}, swCauldron, TRUE, ${_verbage2}]}
    } else /if (${_verbage.Equal[item]}) {
      /invoke ${do_raw_edit[${_debug}, SILENT, stCauldron, "${_verbage2}"]}
    }

    /invoke ${maControl.Clear}
    /invoke ${maControl.Add[active,swCauldron]}
    /invoke ${maControl.Add[item,stCauldron|br]}
    /invoke ${set_control_output[${_debug}, maChr, "chr cauldron", maControl]}
    /return TRUE

  | set gather use %
  } else /if (${_type.Equal[gather]}) {
    /if (!${set_control_num_range[${_debug}, stPctGather, "${_verbage}", 0, 99]}) /return FALSE

  }

  /call set_control_shared ${_type} "${_verbage}" "${_verbage2}" ${_debug}

  /if (${Macro.Return.Equal[SKIP]}) /return FALSE
  /if (${_verbage2.Equal[SILENT]}) /return
  /invoke ${set_control_output[${_debug}, maChr, chr, maChrControl]}

/return TRUE

