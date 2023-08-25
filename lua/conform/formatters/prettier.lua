local util = require("conform.util")
---@type conform.FormatterConfig
return {
  meta = {
    url = "https://github.com/prettier/prettier",
    description = [[Prettier is an opinionated code formatter. It enforces a consistent style by parsing your code and re-printing it with its own rules that take the maximum line length into account, wrapping code when necessary.]],
  },
  command = util.from_node_modules("prettier"),
  args = { "--stdin-filepath", "$FILENAME" },
  cwd = util.root_file({
    -- https://prettier.io/docs/en/configuration.html
    ".prettierrc",
    ".prettierrc.json",
    ".prettierrc.yml",
    ".prettierrc.yaml",
    ".prettierrc.json5",
    ".prettierrc.js",
    ".prettierrc.cjs",
    ".prettierrc.toml",
    "prettier.config.js",
    "prettier.config.cjs",
    "package.json",
  }),
}