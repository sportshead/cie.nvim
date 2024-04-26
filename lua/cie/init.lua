local M = {}

function M.setup()
    vim.filetype.add({ extension = { cie = "cie" } })

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.cie = {
        install_info = {
            url = "https://github.com/sportshead/tree-sitter-cie.git",
            files = { "src/parser.c" },
            generate_requires_npm = false,
            requires_generate_from_grammar = false,
        },
        filetype = "cie",
    }
end

return M
