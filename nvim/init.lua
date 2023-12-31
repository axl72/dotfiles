require('core')

-- Configuración de 'hidden'
vim.api.nvim_set_option('hidden', true)

-- Configuración de portapapeles
vim.api.nvim_set_option('clipboard', 'unnamed')

-- Desactivar la creación de archivos de intercambio
vim.api.nvim_set_option('swapfile', false)


require('core.mappings').load_keybindings()
require('plugins.packer')
