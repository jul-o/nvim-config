return {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {

    }

    local wk = require('which-key')

    -- harpoon
    local mark = require('harpoon.mark')
    local ui = require('harpoon.ui')

    -- telescope
    local builtin = require('telescope.builtin')

    local mappings = {
      ['<leader>'] = {
        function() vim.cmd [[Telescope commands]] end,
        'Run...'
      },
      h = {
        name = 'Harpoon',
        a = { mark.add_file, 'Add file' },
        h = { ui.toggle_quick_menu, 'Toggle quick menu'},
        n = {function() ui.nav_next() end, 'Navigate next'},
        p = {function() ui.nav_prev() end, 'Navigate previous'},
        ["1"] = { function() ui.nav_file(1) end, 'Navigate 1'},
        ["2"] = { function() ui.nav_file(2) end, 'Navigate 2'},
        ["3"] = { function() ui.nav_file(3) end, 'Navigate 3'},
        ["4"] = { function() ui.nav_file(4) end, 'Navigate 4'},
        ["&"] = { function() ui.nav_file(1) end, 'Navigate 1'},
        ["é"] = { function() ui.nav_file(2) end, 'Navigate 2'},
        ["\""] = { function() ui.nav_file(3) end, 'Navigate 3'},
        ["'"] = { function() ui.nav_file(4) end, 'Navigate 4'},
      };
      f = {
        name = 'Telescope',
        f = { builtin.find_files, 'Find all'},
        g = { builtin.git_files, 'Find git'},
        b = { builtin.buffers, 'Find buffers'},
        h = { builtin.help_tags, 'Help'},
        c = { vim.cmd.Ag, 'Code search'},
        p = { function() require('telescope').extensions.projects.projects({}) end, 'Find project'}
      },
      p = {
        name = 'Projects',
        p = { function() require('telescope').extensions.projects.projects({}) end, 'Find project'},
        -- d = { project.delete_project, 'Delete' },
      },
      t = {
        name = 'Neotree',
        t = { '<cmd>NvimTreeToggle<cr>',  'Toggle'},
        c = { '<cmd>NvimTreeCollapse<cr>', 'Collapse' },
      },
      b = {
        name = 'Buffer',
        n = { '<cmd>BufferNext<cr>', 'Next'},
        l = { '<cmd>BufferNext<cr>', 'Next'},
        h = { '<cmd>BufferPrevious<cr>', 'Previous'},
        P = { '<cmd>BufferMovePrevious<cr>', 'Previous'},
        N = { '<cmd>BufferMoveNext<cr>', 'Next'},
        q = { '<cmd>BufferClose<cr>', 'Close'},
      },
      w = {
        name = 'Window',
        v = {'<cmd>:wincmd v<cr>', 'Split vertically'},
        s = {'<cmd>:wincmd s<cr>', 'Split horizontally'},

        h = {'<cmd>:wincmd h<cr>', 'Jump left'},
        j = {'<cmd>:wincmd j<cr>', 'Jump bottom'},
        k = {'<cmd>:wincmd k<cr>', 'Jump up'},
        l = {'<cmd>:wincmd l<cr>', 'Jump right'},

        H = {'<cmd>:wincmd H<cr>', 'Move left'},
        J = {'<cmd>:wincmd J<cr>', 'Move bottom'},
        K = {'<cmd>:wincmd K<cr>', 'Move up'},
        L = {'<cmd>:wincmd L<cr>', 'Move right'},

        q = {'<cmd>:wincmd q<cr>', 'Close'},
      },
      l = {
        name = 'Language',
        r = { vim.lsp.buf.references, 'Find references' },
        R = 'Rename',
        f = { vim.lsp.buf.format, 'Format' },
        h = 'Hover',
        d = 'Jump to definition',
        l = 'Code lens refresh',
        e = 'Display errors',
        ['?'] = 'Lsp infos',
        a = 'Code actions',
      },
      r = {
        name = 'Refactor',
      },
      c = {
        name = 'COC',
        c = { vim.cmd.CocCommand, 'Commands' }

      },
      j = {
        name = 'Jump',
        p = {":call search('^'. matchstr(getline('.'), '\\(^\\s*\\)') .'\\%<' . line('.') . 'l\\S', 'eb')<CR>", 'Previous line, same indentation'},
        n = {":call search('^'. matchstr(getline('.'), '\\(^\\s*\\)') .'\\%>' . line('.') . 'l\\S', 'e')<CR>", 'Next line, same indentation'},
      },
      g = {
        name = 'Git',
        d = { 
          name = 'Diffview',
          o = {vim.cmd.DiffviewOpen, 'Open diff view'},
          c = {vim.cmd.DiffviewClose, 'Close diff view'},
        }
      },
    }

    wk.register(mappings, { mode = 'n', prefix = '<leader>'})
    wk.register(mappings, { mode = 'v', prefix = '<leader>'})
    -- Display action: :imap
  end
}
