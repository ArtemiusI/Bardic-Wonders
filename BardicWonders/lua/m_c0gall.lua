function ArtisanGallantActionbarListener(config, state)
   if 
      state == 6
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.BARD_SONG)
   end
end
EEex_Actionbar_AddListener(ArtisanGallantActionbarListener)