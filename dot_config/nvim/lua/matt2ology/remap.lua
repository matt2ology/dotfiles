-- ###########################################################################
-- # 
-- # https://neovim.io/doc/user/map.html
-- ###########################################################################

-- nnoremap: Any key inside of remap that appears in another beginning of a remap
-- it's not going to recurrsively execute it
-- (n)noremap: Mode you'd like to execute the remap (normal mode)
-- n(noremap): How the remap should be executed
local nnoremap = require("matt2ology.keymap").nnoremap
-- lhs, rhs
nnoremap("<leader>pv","<cmd>Ex<CR>")

