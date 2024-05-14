local status, icons = pcall(require, "nvim-web-devicons")
if not status then
  print("Couldn't import webicons")
  return
end

icons.setup()
