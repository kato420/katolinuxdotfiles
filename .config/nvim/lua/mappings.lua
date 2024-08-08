require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- nvim map
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Mapeo de <Alt-r> para ejecutar el comando en una terminal flotante
map("n", "<A-r>", function()
    require("nvchad.term").runner {
        pos = "float",  -- Usa una ventana flotante
        cmd = function()
            local file = vim.fn.expand("%")  -- Obtener el nombre del archivo actual
            local ft_cmds = {
                python = "python3 " .. file,  -- Comando para Python
                cpp = "g++ -o out " .. file .. " && ./out"  -- Comando para C++
            }
            return ft_cmds[vim.bo.ft] or "echo 'No command configured for this file type'"  -- Comando por defecto
        end,
        id = "code_runner"
    }
end, { desc = "Ejecutar Código en Terminal" })


--toggleable term
map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "sp", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

