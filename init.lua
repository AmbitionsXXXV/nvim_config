require("insis").setup({
  cmp = {
    copilot = true,
  },
  frontend = {
    enable = true,
    tailwindcss = true,
    format_on_save = true,
  },
  python = {
    enable = true,
    formatter = "black",
    format_on_save = true,
  },
  rust = {
    enable = true,
    formatter = "rustfmt",
    format_on_save = true,
  },
  toml = {
    enable = true,
    formatter = "rustfmt",
    format_on_save = true,
  },
  golang = {
    enable = true,
    format_on_save = true,
  },
})
