local map = vim.keymap.set

map("n", "<leader><space>", function()
	require("Snacks").picker.smart()
end, { desc = "Smart Find Files" })

map("n", "<leader>,", function()
	require("Snacks").picker.buffers()
end, { desc = "Buffers" })

map("n", "<leader>/", function()
	require("Snacks").picker.grep()
end, { desc = "Grep" })

map("n", "<leader>:", function()
	require("Snacks").picker.command_history()
end, { desc = "Command History" })

map("n", "<leader>n", function()
	require("Snacks").picker.notifications()
end, { desc = "Notification History" })

map("n", "<leader>e", function()
	require("Snacks").explorer()
end, { desc = "File Explorer" })
-- find

map("n", "<leader>fb", function()
	require("Snacks").picker.buffers()
end, { desc = "Buffers" })

map("n", "<leader>fc", function()
	require("Snacks").picker.files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find Config File" })

map("n", "<leader>ff", function()
	require("Snacks").picker.files()
end, { desc = "Find Files" })

map("n", "<leader>fg", function()
	require("Snacks").picker.git_files()
end, { desc = "Find Git Files" })

map("n", "<leader>fp", function()
	require("Snacks").picker.projects()
end, { desc = "Projects" })

map("n", "<leader>fr", function()
	require("Snacks").picker.recent()
end, { desc = "Recent" })
-- git

map("n", "<leader>gb", function()
	require("Snacks").picker.git_branches()
end, { desc = "Git Branches" })

map("n", "<leader>gl", function()
	require("Snacks").picker.git_log()
end, { desc = "Git Log" })

map("n", "<leader>gL", function()
	require("Snacks").picker.git_log_line()
end, { desc = "Git Log Line" })

map("n", "<leader>gs", function()
	require("Snacks").picker.git_status()
end, { desc = "Git Status" })

map("n", "<leader>gS", function()
	require("Snacks").picker.git_stash()
end, { desc = "Git Stash" })

map("n", "<leader>gd", function()
	require("Snacks").picker.git_diff()
end, { desc = "Git Diff (Hunks)" })

map("n", "<leader>gf", function()
	require("Snacks").picker.git_log_file()
end, { desc = "Git Log File" })
-- Grep

map("n", "<leader>sb", function()
	require("Snacks").picker.lines()
end, { desc = "Buffer Lines" })

map("n", "<leader>sB", function()
	require("Snacks").picker.grep_buffers()
end, { desc = "Grep Open Buffers" })

map("n", "<leader>sg", function()
	require("Snacks").picker.grep()
end, { desc = "Grep" })

map({ "n", "x" }, "<leader>sw", function()
	require("Snacks").picker.grep_word()
end, { desc = "Visual selection or word" })
-- search

map("n", '<leader>s"', function()
	require("Snacks").picker.registers()
end, { desc = "Registers" })

map("n", "<leader>s/", function()
	require("Snacks").picker.search_history()
end, { desc = "Search History" })

map("n", "<leader>sa", function()
	require("Snacks").picker.autocmds()
end, { desc = "Autocmds" })

map("n", "<leader>sb", function()
	require("Snacks").picker.lines()
end, { desc = "Buffer Lines" })

map("n", "<leader>sc", function()
	require("Snacks").picker.command_history()
end, { desc = "Command History" })

map("n", "<leader>sC", function()
	require("Snacks").picker.commands()
end, { desc = "Commands" })

map("n", "<leader>sd", function()
	require("Snacks").picker.diagnostics()
end, { desc = "Diagnostics" })

map("n", "<leader>sD", function()
	require("Snacks").picker.diagnostics_buffer()
end, { desc = "Buffer Diagnostics" })

map("n", "<leader>sh", function()
	require("Snacks").picker.help()
end, { desc = "Help Pages" })

map("n", "<leader>sH", function()
	require("Snacks").picker.highlights()
end, { desc = "Highlights" })

map("n", "<leader>si", function()
	require("Snacks").picker.icons()
end, { desc = "Icons" })

map("n", "<leader>sj", function()
	require("Snacks").picker.jumps()
end, { desc = "Jumps" })

map("n", "<leader>sk", function()
	require("Snacks").picker.keymaps()
end, { desc = "Keymaps" })

map("n", "<leader>sl", function()
	require("Snacks").picker.loclist()
end, { desc = "Location List" })

map("n", "<leader>sm", function()
	require("Snacks").picker.marks()
end, { desc = "Marks" })

map("n", "<leader>sM", function()
	require("Snacks").picker.man()
end, { desc = "Man Pages" })

map("n", "<leader>sp", function()
	require("Snacks").picker.lazy()
end, { desc = "Search for Plugin Spec" })

map("n", "<leader>sq", function()
	require("Snacks").picker.qflist()
end, { desc = "Quickfix List" })

map("n", "<leader>sR", function()
	require("Snacks").picker.resume()
end, { desc = "Resume" })

map("n", "<leader>su", function()
	require("Snacks").picker.undo()
end, { desc = "Undo History" })

map("n", "<leader>uC", function()
	require("Snacks").picker.colorschemes()
end, { desc = "Colorschemes" })
-- LSP

map("n", "gd", function()
	require("Snacks").picker.lsp_definitions()
end, { desc = "Goto Definition" })

map("n", "gD", function()
	require("Snacks").picker.lsp_declarations()
end, { desc = "Goto Declaration" })

map("n", "gr", function()
	require("Snacks").picker.lsp_references()
end, { desc = "References" })

map("n", "gI", function()
	require("Snacks").picker.lsp_implementations()
end, { desc = "Goto Implementation" })

map("n", "gy", function()
	require("Snacks").picker.lsp_type_definitions()
end, { desc = "Goto T[y]pe Definition" })

map("n", "<leader>ss", function()
	require("Snacks").picker.lsp_symbols()
end, { desc = "LSP Symbols" })

map("n", "<leader>sS", function()
	require("Snacks").picker.lsp_workspace_symbols()
end, { desc = "LSP Workspace Symbols" })
-- Other

map("n", "<leader>z", function()
	require("Snacks").zen()
end, { desc = "Toggle Zen Mode" })

map("n", "<leader>Z", function()
	require("Snacks").zen.zoom()
end, { desc = "Toggle Zoom" })

map("n", "<leader>.", function()
	require("Snacks").scratch()
end, { desc = "Toggle Scratch Buffer" })

map("n", "<leader>S", function()
	require("Snacks").scratch.select()
end, { desc = "Select Scratch Buffer" })

map("n", "<leader>n", function()
	require("Snacks").notifier.show_history()
end, { desc = "Notification History" })

map("n", "<leader>bd", function()
	require("Snacks").bufdelete()
end, { desc = "Delete Buffer" })

map("n", "<leader>cR", function()
	require("Snacks").rename.rename_file()
end, { desc = "Rename File" })

map({ "n", "v" }, "<leader>gB", function()
	require("Snacks").gitbrowse()
end, { desc = "Git Browse" })

map("n", "<leader>gg", function()
	require("Snacks").lazygit()
end, { desc = "Lazygit" })

map("n", "<leader>un", function()
	require("Snacks").notifier.hide()
end, { desc = "Dismiss All Notifications" })

map("n", "<c-/>", function()
	require("Snacks").terminal()
end, { desc = "Toggle Terminal" })

map("n", "<c-_>", function()
	require("Snacks").terminal()
end, { desc = "which_key_ignore" })

map({ "n", "t" }, "]]", function()
	require("Snacks").words.jump(vim.v.count1)
end, { desc = "Next Reference" })

map({ "n", "t" }, "[[", function()
	require("Snacks").words.jump(-vim.v.count1)
end, { desc = "Prev Reference" })
