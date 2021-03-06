local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- no highlight
keymap("n", "<leader>nl", ":nohl<cr>", opts)

-- save buffer
keymap("n", "<leader>w", ":w<cr>", opts)
-- exit cur window
keymap("n", "<leader>q", ":q<cr>", opts)

-- Navigate line
keymap("n", "H", "^", opts)
-- keymap("n", "<S-h>", "^", opts)
keymap("n", "L", "$", opts)
-- keymap("n", "<S-l>", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)
keymap("n", "J", "3j", opts)
keymap("n", "K", "3k", opts)

-- split
keymap("n", "sl", ":set splitright<CR>:vsplit<CR>", opts)
keymap("n", "sj", ":set splitbelow<CR>:split<CR>", opts)
keymap("n", "sk", ":set nosplitbelow<CR>:split<CR>", opts)
keymap("n", "sh", ":set nosplitright<CR>:vsplit<CR>", opts)

-- open file explore on sitebar
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)
-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
keymap("n", "<leader>k", ":resize +2<CR>", opts)
keymap("n", "<leader>j", ":resize -2<CR>", opts)
keymap("n", "<leader>h", ":vertical resize -2<CR>", opts)
keymap("n", "<leader>l", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<Space>f", ":NvimTreeFindFile<cr>", opts)

-- Bufferline
-- keymap("n", "<C-n>", "<cmd>BufferLineCyclePrev<cr>", opts)
-- keymap("n", "<C-m>", "<cmd>BufferLineCycleNext<cr>", opts)
keymap("n", "<Space>m", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap("n", "<Space>n", "<cmd>BufferLineCycleNext<cr>", opts)
keymap("n", "<Space>w", "<cmd>Bdelete<cr>", opts)

keymap("n", "<leader>s", ":SymbolsOutline<cr>", opts)
