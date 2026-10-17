<div align="center">

# 🎙️ Arg-Microfono

**Sistema de micrófono y voz profesional para FiveM con alternancia de micrófono abierto / PTT.**

[![FiveM](https://img.shields.io/badge/FiveM-Resource-orange.svg?style=for-the-badge&logo=fivem)](https://fivem.net/)
[![Lua](https://img.shields.io/badge/Lua-5.4-blue.svg?style=for-the-badge&logo=lua)](https://www.lua.org/)
[![ESX](https://img.shields.io/badge/ESX-Legacy-success.svg?style=for-the-badge)](https://github.com/esx-framework/esx_core)
[![QBCore](https://img.shields.io/badge/QBCore-Framework-blueviolet.svg?style=for-the-badge)](https://github.com/qbcore-framework)
[![Qbox](https://img.shields.io/badge/Qbox-Supported-cyan.svg?style=for-the-badge)](https://github.com/Qbox-project)
[![PMA-Voice](https://img.shields.io/badge/PMA--Voice-Compatible-brightgreen.svg?style=for-the-badge)](https://github.com/AvarianKnight/pma-voice)
[![Resmon](https://img.shields.io/badge/Resmon-0.00ms-darkgreen.svg?style=for-the-badge)](#rendimiento)

</div>

---

## 📌 Descripción

**Arg-Microfono** es un script ligero, ultra optimizado y visualmente refinado para servidores de FiveM que permite a los jugadores alternar entre el modo **Pulsar para hablar (Push-to-Talk / PTT)** y **Micrófono Abierto (Transmisión continua)** mediante una tecla personalizable (por defecto `F10`) o comando de chat.

Cuenta con un widget NUI de estética profesional *Glassmorphism* que muestra el nombre del personaje en tiempo real junto con un ecualizador de ondas armónicas progresivas de 5 barras.

---

## ✨ Características

- ⚡ **Consumo 0.00 ms**: Máxima optimización de rendimiento. Sin bucles pasivos en reposo; el hilo de transmisión solo se ejecuta bajo demanda mientras el micrófono está activo.
- 🎛️ **Alternancia Instantánea (`F10`)**: Pasa de Pulsar para Hablar a Micrófono Abierto con un solo toque. Cada jugador puede reasignar su tecla en los ajustes de GTA V.
- 🌐 **Compatibilidad Multi-Framework**:
  - **ESX Legacy**: Detecta y muestra el nombre y apellido del personaje (`firstName` y `lastName`).
  - **QBCore (`qb-core`)**: Extrae automáticamente la identidad desde `charinfo`.
  - **Qbox (`qbx_core`)**: Integración nativa con los exports de Qbox.
  - **Standalone**: Si no hay framework activo o el personaje no cargó, utiliza el nombre de jugador de FiveM.
- 🔊 **Compatibilidad de Voz Total**: Diseñado específicamente para funcionar con **pma-voice** y **mumble-voip** sin alterar los grids ni las distancias de proximidad.
- 🎨 **Widget NUI Minimalista y Elegante**:
  - Estilo cápsula con desenfoque suave (*Glassmorphism*).
  - Nombre del personaje destacado.
  - Ondas de audio armónicas progresivas continuas que representan la modulación de voz en vivo.
  - Transición fluida al desactivarse (se oculta automáticamente tras 1.2 segundos para mantener la pantalla 100% limpia).

---

## 🚀 Instalación

1. Descarga o clona el repositorio dentro de tu carpeta `resources`:
   ```bash
   git clone https://github.com/Argento-FiveM/Arg-Microfono.git
   ```
2. Asegúrate de que la carpeta se llame exactamente `Arg-Microfono`.
3. Añade la siguiente línea en tu archivo `server.cfg` (después de tu recurso de voz):
   ```cfg
   ensure pma-voice
   ensure Arg-Microfono
   ```
4. Reinicia tu servidor o escribe en la consola:
   ```cfg
   refresh
   start Arg-Microfono
   ```

---

## ⌨️ Controles y Comandos

| Acción | Tecla por defecto | Comando de Chat |
| :--- | :--- | :--- |
| **Alternar Micrófono** | `F10` | `/microfono` |

> 💡 **Personalización:** Cada jugador puede reasignar la tecla en cualquier momento desde:  
> **ESC > Configuración > Asignación de teclas > FiveM > Alternar Microfono**.

---

## 📊 Rendimiento (`resmon`)

| Estado | Consumo de CPU |
| :--- | :--- |
| **Inactivo (PTT)** | **`0.00 ms`** |
| **Micrófono Activo** | **`0.01 ms`** |

---

## 🔌 Exports para Desarrolladores

Puedes interactuar con el recurso desde otros scripts o HUDs propios:

```lua
exports['Arg-Microfono']:ToggleMic()
local isActive = exports['Arg-Microfono']:IsMicActive()
```

---

## 🛠️ Tecnologías

- **Lenguaje:** Lua 5.4
- **Interfaz (NUI):** HTML5, Vanilla CSS3 (Glassmorphism & CSS Animations), JavaScript (Vanilla)
- **Tipografía:** [Outfit](https://fonts.google.com/specimen/Outfit)

---

## 👨‍💻 Créditos

- **Autor:** Argento
- **Comunidad / Crew:** FiveM AR
- **Versión:** 1.0.0
- **Fecha:** 17/10/2026
