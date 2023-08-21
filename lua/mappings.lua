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
		name = "File",                          -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		w = { ":w<cr>", "Save file" },
		s = { ":Telescope current_buffer_fuzzy_find<cr>", "Search in Buffer" },

	},
	g = {
		name = "Git",
		s = { ":Git status<cr>", "Git Status" },
		a = { ":Git add .<cr>", "Git add ." }
	},
	t = {
		name = "File Tree",
		t = { ":NvimTreeToggle<cr>", "Toggle File Explorer" },
		f = { ":NvimTreeFocus<cr>", "Focus on file explorer" },
		s = { ":NvimTreeFindFile<cr>", "Search for a file" },
		c = { ":NvimTreeClose<cr>", "Close Tree" }
	}
}, { prefix = "<leader>" })
