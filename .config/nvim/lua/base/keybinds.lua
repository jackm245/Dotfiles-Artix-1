--local function register_mappings(mappings, default_options)
  --for mode, mode_mappings in pairs(mappings) do
    --for _, mapping in pairs(mode_mappings) do
      --local options = #mapping == 3 and table.remove(mapping) or default_options
      --local prefix, cmd = unpack(mapping)
      --pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
    --end
  --end
--end

vim.cmd('let mapleader=\".\"')
vim.cmd('inoremap <leader>ps :lua require(\'telescope.builtin\').grep_string({ search = vim.fn.input(\"Greo for > \")})<CR>')
vim.cmd('map <leader>h :wincmd h<CR>')
vim.cmd('map <leader>j :wincmd j<CR>')
vim.cmd('map <leader>k :wincmd k<CR>')
vim.cmd('map <leader>l :wincmd l<CR>')

local mappings = {
  i = { -- Insert mode
    -- I hate escape
    { "jk", "<ESC>" },
    { "kj", "<ESC>" },
    { "jj", "<ESC>" },

    -- Move current line / block with Alt-j/k ala vscode.
    { "<A-j>", "<Esc>:m .+1<CR>==gi" },
    { "<A-k>", "<Esc>:m .-2<CR>==gi" },

    -- Terminal window navigation
    { "<C-h>", "<C-\\><C-N><C-w>h" },
    { "<C-j>", "<C-\\><C-N><C-w>j" },
    { "<C-k>", "<C-\\><C-N><C-w>k" },
    { "<C-l>", "<C-\\><C-N><C-w>l" },
  }
}
-- Startify
vim.cmd('map <leader>s :Startify<CR>')

-- NerdTREE
vim.cmd('map <leader>n :NvimTreeToggle<CR>')

-- Mundo
vim.cmd('nnoremap <leader>m :MundoToggle<CR>')

-- ZenMode
vim.cmd('nnoremap <leader>z :ZenMode<CR>')

-- Spell Check
vim.cmd('map <leader>o :setlocal spell! spelllang=en_us<CR>')


-- Bufferline
-- Move to previous/next
vim.cmd('nnoremap <silent>    <A-,> :BufferLineCyclePrev<CR>')
vim.cmd('nnoremap <silent>    <A-.> :BufferLineCycleNext<CR>')
-- Re-order to previous/next
vim.cmd('nnoremap <silent>    <A-<> :BufferLineMovePrevious<CR>')
vim.cmd('nnoremap <silent>    <A->> :BufferLineMoveNext<CR>')
-- Close buffer
vim.cmd('nnoremap <silent>    <A-c> :BufferLineClose<CR>')
-- Pick Buffer
vim.cmd('nnoremap <silent> gb :BufferLinePick<CR>')

-- ToggleTerm
-- <leader>t

-- Telescope
vim.cmd('nnoremap <leader>ff <cmd>lua require(\'telescope.builtin\').find_files()<cr>')
vim.cmd('nnoremap <leader>fg <cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
vim.cmd('nnoremap <leader>fb <cmd>lua require(\'telescope.builtin\').buffers()<cr>')
vim.cmd('nnoremap <leader>fh <cmd>lua require(\'telescope.builtin\').help_tags()<cr>')

-- Mappings
vim.cmd('inoremap <silent><expr> <C-Space> compe#complete()')
vim.cmd('inoremap <silent><expr> <CR>      compe#confirm(\'<CR>\')')
vim.cmd('inoremap <silent><expr> <C-e>     compe#close(\'<C-e>\')')
vim.cmd('inoremap <silent><expr> <C-f>     compe#scroll({ \'delta\': +4 })')
vim.cmd('inoremap <silent><expr> <C-d>     compe#scroll({ \'delta\': -4 })')

-- Dashboard
vim.cmd('nmap <Leader>ss :<C-u>SessionSave<CR>')
vim.cmd('nmap <Leader>sl :<C-u>SessionLoad<CR>')

-- Lsp config
vim.cmd('nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>')
vim.cmd('nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>')
vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd('nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
vim.cmd('nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>')


-- register_mappings(mappings, { silent = true, noremap = true })
