# Lampas Data Pack

A Minecraft 1.21.1 datapack designed for server installations, with built-in dual compatibility to run as a native NeoForge mod.

## Features

- **Standard Datapack Structure:** Built with `pack_format: 48` for Minecraft 1.21.1 compatibility.
- **NeoForge Compatibility:** Contains a `META-INF/neoforge.mods.toml` configuration, allowing it to load automatically as a global mod when placed in the `mods/` directory.
- **Event Loops Hooked:** Includes template hooks for initialization (`lampas:init` via `load.json`) and game-tick processing (`lampas:tick` via `tick.json`).

## Folder Structure

```
├── pack.mcmeta                       # Datapack description & format (48)
├── META-INF/
│   └── neoforge.mods.toml             # NeoForge mod information
└── data/
    ├── minecraft/
    │   └── tags/
    │       └── function/
    │           ├── load.json         # Runs lampas:init on load/reload
    │           └── tick.json         # Runs lampas:tick on every tick
    └── lampas/
        └── function/
            ├── init.mcfunction       # Initialization commands
            └── tick.mcfunction       # Tick-based commands
```

## Installation Methods

### Method A: Global Server Mod (Recommended for NeoForge servers)

1. Package the files in this directory into a `.zip` file (make sure `pack.mcmeta` and `META-INF` are at the root level).
2. Rename the extension from `.zip` to `.jar`.
3. Drop the JAR file into your server's `mods` folder.
4. NeoForge will load the datapack automatically globally for all worlds.

### Method B: Standard Datapack

1. Copy this folder (or zip it) and place it in the `<world-name>/datapacks/` directory of your server.
2. Run `/reload` in-game or in the server console to apply changes.
