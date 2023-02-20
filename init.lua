local opt = vim.opt

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.list = true
opt.listchars = {
  tab = '▸·',
  trail = '·'
}
