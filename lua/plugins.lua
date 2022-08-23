-- nvim-tree
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
    custom = { "^.git$" },
  },
})

-- Bufferline
  -- local groups = require('bufferline.groups')
  require('bufferline').setup({
    options = {
		  indicator_icon = ' ',
    	buffer_close_icon = '',
      modified_icon = '●',
      show_close_icon = false,
      -- close_icon = '',
		  left_trunc_marker = '',
    	right_trunc_marker = '',
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'EXPLORER',
          highlight = 'PanelHeading',
        },
        {
          filetype = 'packer',
          text = 'Packer',
          highlight = 'PanelHeading',
        },
      },
      -- groups = {
      --   options = {
      --    toggle_hidden_on_enter = true,
      --   },
      --   items = {
      --     groups.builtin.ungrouped,
      --     {
      --      name = "Tests", -- Mandatory
      --      -- highlight = {gui = "underline", guisp = "blue"}, -- Optional
      --      -- priority = 2, -- determines where it will appear relative to other groups (Optional)
      --      icon = "", -- Optional
      --      matcher = function(buf) -- Mandatory
      --       return buf.name:match('%_test') or buf.name:match('%_spec')
      --      end,
      --     },
      --     {
      --       name = "Docs",
      --       icon = '',
      --       -- highlight = {gui = "undercurl", guisp = "green"},
      --       -- priority = 3,
      --       -- auto_close = false,  -- whether or not close this group if it doesn't contain the current buffer
      --       matcher = function(buf)
      --         return buf.name:match('%.md') or buf.name:match('%.txt')
      --       end,
      --       -- separator = { -- Optional
      --       --  style = require('bufferline.groups').separator.tab
      --       -- },
      --     },
      --   },
      -- },
    },
  })

--mini.nvim
require('mini.statusline').setup({
  -- Content of statusline as functions which return statusline string. See
  -- `:hi statusline` and code of default contents (used instead of `nil`).
  content = {
    -- Content for active window
    active = nil,
    -- Content for inactive window(s)
    inactive = nil,
  },

  -- Whether to use icons by default
  use_icons = true,

  -- Whether to set Vim's settings for statusline (make it always shown with
  -- 'laststatus' set to 2). To use global statusline in Neovim>=0.7.0, set
  -- this to `false` and 'laststatus' to 3.
  set_vim_settings = true,
})

require("mini.comment").setup({
  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Toggle comment (like `gcip` - comment inner paragraph) for both
    -- Normal and Visual modes
    comment = 'gc',

    -- Toggle comment on current line
    comment_line = 'gcc',

    -- Define 'comment' textobject (like `dgc` - delete whole comment block)
    textobject = 'gc',
  },
  -- Hook functions to be executed at certain stage of commenting
  hooks = {
    -- Before successful commenting. Does nothing by default.
    pre = function() end,
    -- After successful commenting. Does nothing by default.
    post = function() end,
  },
})

require("mini.pairs").setup({
  -- In which modes mappings from this `config` should be created
  modes = { insert = true, command = false, terminal = false },

  -- Global mappings. Each right hand side should be a pair information, a
  -- table with at least these fields (see more in |MiniPairs.map|):
  -- - <action> - one of 'open', 'close', 'closeopen'.
  -- - <pair> - two character string for pair to be used.
  -- By default pair is not inserted after `\`, quotes are not recognized by
  -- `<CR>`, `'` does not insert pair after a letter.
  -- Only parts of tables can be tweaked (others will use these defaults).
  mappings = {
    ['('] = { action = 'open', pair = '()', neigh_pattern = '[^\\].' },
    ['['] = { action = 'open', pair = '[]', neigh_pattern = '[^\\].' },
    ['{'] = { action = 'open', pair = '{}', neigh_pattern = '[^\\].' },

    [')'] = { action = 'close', pair = '()', neigh_pattern = '[^\\].' },
    [']'] = { action = 'close', pair = '[]', neigh_pattern = '[^\\].' },
    ['}'] = { action = 'close', pair = '{}', neigh_pattern = '[^\\].' },

    ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^\\].', register = { cr = false } },
    ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%a\\].', register = { cr = false } },
    ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\].', register = { cr = false } },
  },
})

-- require("mini.indentscope").gen_animation('none')
-- require("mini.indentscope").setup({
--   draw = {
--     -- Delay (in ms) between event and start of drawing scope indicator
--     -- delay = 50,
--
--     -- Animation rule for scope's first drawing. A function which, given next
--     -- and total step numbers, returns wait time (in ms). See
--     -- |MiniIndentscope.gen_animation()| for builtin options. To not use
--     -- animation, supply `require('mini.indentscope').gen_animation('none')`.
--     -- animation = --<function: implements constant 20ms between steps>,
--   },
--
--   -- Module mappings. Use `''` (empty string) to disable one.
--   mappings = {
--     -- Textobjects
--     object_scope = 'ii',
--     object_scope_with_border = 'ai',
--
--     -- Motions (jump to respective border line; if not present - body line)
--     goto_top = '[i',
--     goto_bottom = ']i',
--   },
--
--   -- Options which control computation of scope. Buffer local values can be
--   -- supplied in buffer variable `vim.b.miniindentscope_options`.
--   options = {
--     -- Type of scope's border: which line(s) with smaller indent to
--     -- categorize as border. Can be one of: 'both', 'top', 'bottom', 'none'.
--     border = 'both',
--
--     -- Whether to use cursor column when computing reference indent. Useful to
--     -- see incremental scopes with horizontal cursor movements.
--     indent_at_cursor = true,
--
--     -- Whether to first check input line to be a border of adjacent scope.
--     -- Use it if you want to place cursor on function header to get scope of
--     -- its body.
--     try_as_border = false,
--   },
--
--   -- Which character to use for drawing scope indicator
--   -- symbol = '',
--   symbol = '│',
-- }
-- )

-- lspsaga
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local saga = require 'lspsaga'
saga.init_lsp_saga {
  border_style = "round",
  code_action_icon = "",
}

-- or use command
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- nvim-treesitter
require 'nvim-treesitter.install'.compilers = { 'gcc', 'clang', 'zig' }

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	-- ensure_installed = "all", -- one of "all" or a list of languages
	-- ignore_install = {""}, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		-- disable = { "" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = false,
	},
	indent = { enable = false },
   rainbow = {
    enable = true,
    disable = { "" }, -- list of languages you want to disable the plugin for
    -- extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
})

-- telescope
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
-- require('telescope').setup {
  -- extensions = {
    -- fzf = {
      -- fuzzy = true,                    -- false will only do exact matching
      -- override_generic_sorter = true,  -- override the generic sorter
      -- override_file_sorter = true,     -- override the file sorter
      -- case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    -- }
  -- }
-- }
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {cssls, cssmodules_ls, emmet_ls, html, jsonls, tsserver, sumneko_lua, },
  automatic_installation = true,
})
local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- Mappings.
  local opts = { noremap=true, silent=true }
  -- buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
end
-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach
}
