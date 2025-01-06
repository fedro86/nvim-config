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

