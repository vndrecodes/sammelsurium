# Useful vscode stuff

## Go to file command palette
Exclude directories from command palette:
1. Delete recent files: `File` > `Open Recent` > `Clear Recently Opened`
2. Add dirs/files to ignore in `settings.json` (via GUI):
   * `files.exclude`
   * `search.exclude`
3. Make sure `Use exclude settings and ignore files` is toggled in search pane


## Settings Scope
*VS Code provides different scopes for settings:*
   - *User settings - Settings that apply globally to any instance of VS Code you open.*
   - *Workspace settings - Settings stored inside your workspace and only apply when the workspace is opened.*

*When you switch to a profile, the user settings are scoped to only that profile. When you switch to another profile, the user settings of that other profile are applied. This way, you can have different settings for different profiles.*