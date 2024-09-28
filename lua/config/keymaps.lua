vim.g.mapleader = " "

local map = vim.keymap.set

-- Line Display

map("n", "<A-z>", function()
  vim.o.wrap = not vim.o.wrap
end, { desc = "Toggle wrap" })

-- Cursor Motion

map("n", "j", [[v:count ? 'j' : 'gj']], { expr = true })
map("n", "k", [[v:count ? 'k' : 'gk']], { expr = true })

-- Lines Movement

-- https://vim.fandom.com/wiki/Moving_lines_up_or_down#Mappings_to_move_lines
map("n", "<A-j>", "<CMD>m .+1<CR>==", { desc = "Move line / block down" })
map("n", "<A-k>", "<CMD>m .-2<CR>==", { desc = "Move line / block up" })
map("i", "<A-j>", "<Esc><CMD>m .+1<CR>==gi", { desc = "Move line / block down" })
map("i", "<A-k>", "<Esc><CMD>m .-2<CR>==gi", { desc = "Move line / block up" })
map("v", "<A-j>", "<CMD>m '>+1<CR>gv=gv", { desc = "Move line / block down" })
map("v", "<A-k>", "<CMD>m '<-2<CR>gv=gv", { desc = "Move line / block up" })

map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Window Navigation

-- `<C-\><C-N>` can be used to go to Normal mode from any other mode without Ex mode.
map("i", "<A-Left>",  "<C-\\><C-N><C-w>h", { desc = "Focus window left" })
map("i", "<A-Down>",  "<C-\\><C-N><C-w>j", { desc = "Focus window down" })
map("i", "<A-Up>",    "<C-\\><C-N><C-w>k", { desc = "Focus window up" })
map("i", "<A-Right>", "<C-\\><C-N><C-w>l", { desc = "Focus window right" })

map("n", "<C-h>", "<C-w>h", { desc = "Focus window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Focus window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Focus window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Focus window right" })

-- Window Resize (Look from left-top window)

map("n", "<C-Left>",  "<CMD>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Down>",  "<CMD>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Up>",    "<CMD>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width" })

-- Misc

map("n", "<leader>wq", "<C-w>q", { desc = "Quit the window" })

map("n", "<leader>ws", "<C-w>s", { desc = "Split the window" })
map("n", "<leader>wv", "<C-w>v", { desc = "Split vertically the window" })

map("n", "<leader>nh", ":nohl<CR>")

