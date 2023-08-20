local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
	f = {
		name = "File", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		w = { ":w<cr>", "Save file" },
		c = { ":Telescope current_buffer_fuzzy_find<cr>", "Search in Buffer"},
		x = { ":NvimTreeToggle<cr>", "Toggle File Explorer"}
	},
	g = {
		name = "Git",
		s = { ":Git status<cr>", "Git Status" },
		a= {":Git add .<cr>", "Git add ." }
	}
},{prefix = "<leader>" })
