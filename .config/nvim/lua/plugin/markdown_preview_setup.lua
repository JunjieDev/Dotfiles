-- ==================================================================================
--                                     Markdown-Preview
-- ==================================================================================
-- URL         : https://github.com/iamcco/markdown-preview.nvim

local ok, makdown = pcall(require, "markdown-preview")
if not ok then
     do
          return
     end
end

-- VARIABLE --
local vg = vim.g

-- set to 1, nvim will open the preview window after entering the markdown buffer
vg.mkdp_auto_start = 0 -- (default : 0)

-- set to 1, the nvim will auto close current preview window when change
-- from markdown buffer to another buffer
vg.mkdp_auto_close = 1 -- (default : 1)

-- set to 1, the vim will refresh markdown when save the buffer or
-- leave from insert mode, default 0 is auto refresh markdown as you edit or
-- move the cursor
vg.mkdp_refresh_slow = 0 -- (default : 0)

-- set to 1, the MarkdownPreview command can be use for all files,
-- by default it can be use in markdown file
vg.mkdp_command_for_global = 0 -- (default : 0)

-- set to 1, preview server available to others in your network
-- by default, the server listens on localhost (127.0.0.1)
vg.mkdp_open_to_the_world = 0 -- (default : 0)

-- use custom IP to open preview page
-- useful when you work in remote vim and preview on local browser
-- more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
vg.mkdp_open_ip = '' -- (default : '')

-- specify browser to open preview page
-- for path with space
-- valid: `/path/with\ space/xxx`
-- invalid: `/path/with\\ space/xxx`
vg.mkdp_browser = '' -- (default : '')

-- set to 1, echo preview page url in command line when open preview page
vg.mkdp_echo_preview_url = 0 -- (default : 0)

-- a custom vim function name to open preview page
-- this function will receive url as param
vg.mkdp_browserfunc = '' -- (default : '')

-- options for markdown render
--   mkit: markdown-it options for render
--   katex: katex options for math
--   uml: markdown-it-plantuml options
--   maid: mermaid options
--   disable_sync_scroll: if disable sync scroll,
--   sync_scroll_type: 'middle', 'top' or 'relative',
--     middle: mean the cursor position alway show at the middle of the preview page
--     top: mean the vim top viewport alway show at the top of the preview page
--     relative: mean the cursor position alway show at the relative positon of the preview page
--   hide_yaml_meta: if hide yaml metadata,
--   sequence_diagrams: js-sequence-diagrams options
--   content_editable: if enable content editable for preview page,
--   disable_filename: if disable filename header for preview page,
vg.mkdp_preview_options = {
     mkit = {}, -- (default : {})
     katex = {}, -- (default : {})
     uml = {}, -- (default : {})
     maid = {}, -- (default : {})
     disable_sync_scroll = 0, -- (default : 0)
     sync_scroll_type = 'middle', -- (default : 'middle')
     hide_yaml_meta = 1, -- (default : 1)
     sequence_diagrams = {}, -- (default : {})
     flowchart_diagrams = {}, -- (default : {})
     content_editable = false, -- (default : false)
     disable_filename = 0, -- (default : 0)
     toc = {}, -- (default : {})
}

-- use a custom markdown style must be absolute path
-- like '/Users/username/markdown.css' or expand('~/markdown.css')
vg.mkdp_markdown_css = '' -- (default : '')

-- use a custom highlight style must absolute path
-- like '/Users/username/highlight.css' or expand('~/highlight.css')
vg.mkdp_highlight_css = '' -- (default : '')

-- use a custom port to start server or empty for random
vg.mkdp_port = '' -- (default : '')

-- preview page title
-- ${name} will be replace with the file name
vg.mkdp_page_title = '「${name}」' -- (default : '「${name}」')

-- recognized filetypes
-- these filetypes will have MarkdownPreview... commands
vg.mkdp_filetypes = { 'markdown' } -- (default : {'markdown'})

-- set theme (dark or light)
-- By default the theme is define according to the preferences of the system
--vg.mkdp_theme = 'light'
