local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "nixfmt",
    method = FORMATTING,
    filetypes = { "nix" },
    generator_opts = {
        command = "nixfmt",
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
