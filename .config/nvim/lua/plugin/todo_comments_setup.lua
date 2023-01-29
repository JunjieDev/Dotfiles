-- ==================================================================================
--                                  Todo-comments
-- ==================================================================================
-- URL         : https://github.com/folke/todo-comments.nvim

-- VARIABLE --
local ok, todo_comments = pcall(require, "todo-comments")

if not ok then
  do
    return
  end
end

todo_comments.setup({

})
