local status, _ = pcall(vim.cmd, "colorscheme embark") 
if not status then
  print("colorscheme not found!")
  return
end
