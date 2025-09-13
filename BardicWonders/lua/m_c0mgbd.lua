function ArtisanMageBardActionbarListener(config, state)
   if 
      state == 13
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.BARD_SONG)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.QUICK_SPELL_1)
   end
end
EEex_Actionbar_AddListener(ArtisanMageBardActionbarListener)

function ArtisanFighterMageBardActionbarListener(config, state)
   if 
      state == 10
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4001
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.BARD_SONG)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.QUICK_SPELL_1)
   end
end
EEex_Actionbar_AddListener(ArtisanFighterMageBardActionbarListener)

function ArtisanIllusionistBardActionbarListener(config, state)
   if 
      state == 13
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4002
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.BARD_SONG)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.QUICK_SPELL_1)
   end
end
EEex_Actionbar_AddListener(ArtisanIllusionistBardActionbarListener)

function ArtisanFighterIllusionistBardActionbarListener(config, state)
   if 
      state == 10
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4003
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.BARD_SONG)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.QUICK_SPELL_1)
   end
end
EEex_Actionbar_AddListener(ArtisanFighterIllusionistBardActionbarListener)