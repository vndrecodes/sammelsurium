# Fix ` Unknown table 'COLUMN_STATISTICS' in ...`

1. Open: `/Applications/MySQLWorkbench.app/Contents/Resources/plugins/wb_admin_export_options.py`
2. Replace:
    * Line: `"column-statistics":["Writing ANALYZE TABLE statements to generate statistics histograms.", "FALSE", "BOOL", ("8.0.2", None)]`
    * With: `"column-statistics":["Writing ANALYZE TABLE statements to generate statistics histograms (set 0 to disable).", "1", "INT", (None, None)]`
3. Remove (if exists): `/Applications/MySQLWorkbench.app/Contents/Resources/plugins/wb_admin_export_options.pyo`
4. In `Server > Data Export > Advanced Options... > Other` set `column-statistics - Writing ANALYZE TABLE statements to generate statistics histograms (set 0 to disable).` to `0`