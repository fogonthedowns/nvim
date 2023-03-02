local set, comment = pcall(require, "Comment")
if not set then
  return
end

comment.setup()
