require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--

-- 1. Disable automatic clipboard sync (recommended)
-- This prevents normal d/y/c from touching the system clipboard unless you explicitly use "+y
vim.opt.clipboard = ""

-- 2. Keymaps: Make delete/change use the black-hole register ("_) by default
-- This is the most common and clean solution.

local map = vim.keymap.set

-- Delete without yanking (normal + visual)
map({ "n", "x" }, "d", '"_d', { desc = "Delete without yanking" })
map({ "n", "x" }, "D", '"_D', { desc = "Delete to end of line without yanking" })

-- Change without yanking
map({ "n", "x" }, "c", '"_c', { desc = "Change without yanking" })
map({ "n", "x" }, "C", '"_C', { desc = "Change to end of line without yanking" })

-- Delete single character without yanking
map({ "n", "x" }, "x", '"_x', { desc = "Delete char without yanking" })
map({ "n", "x" }, "X", '"_X', { desc = "Delete char before cursor without yanking" })

-- Substitute (s/S) without yanking
map({ "n", "x" }, "s", '"_s', { desc = "Substitute without yanking" })
map({ "n", "x" }, "S", '"_S', { desc = "Substitute line without yanking" })

-- Optional: Keep a "cut" (delete + yank) mapping with <leader>
-- So you can still cut when you need it: <leader>d or <leader>c
map({ "n", "x" }, "<leader>d", "d", { desc = "Cut (delete + yank)" })
map({ "n", "x" }, "<leader>c", "c", { desc = "Change + yank" })
map({ "n", "x" }, "<leader>x", "x", { desc = "Cut char" })
