--require("persistence").setup()
--{
--  dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
--  options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
--  pre_save = nil, -- a function to call before saving the session
--}


-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>rs", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap("n", "<leader>rl", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>rd", [[<cmd>lua require("persistence").stop()<cr>]], {})