local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
RivernateGroup = augroup('Rivernate', {})

require("rivernate.set")
require("rivernate.packer")

autocmd({"BufWritePre"}, {
    group = RivernateGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
