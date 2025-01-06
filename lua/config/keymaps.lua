-- motion keys (left, down, up, right)
vim.keymap.set({'n', 'v'}, 'j', 'h')
vim.keymap.set({'n', 'v'}, ',', 'j')
vim.keymap.set({'n', 'v'}, 'k', 'k')
vim.keymap.set({'n', 'v'}, 'l', 'l')


-- beginning/end of word
vim.keymap.set({'n', 'v'}, 'h', 'b')
vim.keymap.set({'n', 'v'}, 'ò', 'e')

-- repeat
vim.keymap.set({'n', 'v'}, '\'', ';')

-- escape insert
vim.keymap.set('i', 'jj', '<Esc>')

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
