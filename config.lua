Config = {}

Config.DefaultKey = 'F10'
Config.KeybindDescription = 'Alternar Microfono (PTT / Activo)'
Config.DefaultMode = 'ptt'
Config.IncludeMuteInCycle = false

Config.EnableDedicatedMuteKey = false
Config.DefaultMuteKey = ''
Config.MuteKeybindDescription = 'Silenciar / Desmutear Microfono'

Config.DisableOnDeath = true
Config.DisableInPauseMenu = true

Config.UI = {
    EnableToast = true,
    ToastDuration = 3000,
    ShowPersistentHUD = true,
    HUDPosition = 'bottom-right',
    EnableSounds = true,
    SoundVolume = 0.25
}

Config.Commands = {
    Toggle = 'microfono',
    ToggleAlias = 'micromodo',
    Mute = 'mutemic'
}

Config.Locales = {
    ['mode_ptt'] = 'PULSAR PARA HABLAR',
    ['desc_ptt'] = 'Hablas solo al mantener la tecla de voz',
    ['mode_active'] = 'MICROFONO ACTIVO',
    ['desc_active'] = 'Microfono abierto transmitiendo continuamente',
    ['mode_muted'] = 'MICROFONO SILENCIADO',
    ['desc_muted'] = 'Tu microfono esta completamente muteado',
    ['dead_warning'] = 'Tu microfono activo fue desactivado por inconsciencia',
    ['syntax_help'] = 'Uso: /microfono [ptt / activo / mute]'
}
