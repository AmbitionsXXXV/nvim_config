--- @param config PythonConfig
return function(config)
  return {

    getFormatOnSavePattern = function()
      if config.format_on_save then
        return { "*.py" }
      end
      return {}
    end,

    getTSEnsureList = function()
      return { "python" }
    end,

    getLSPEnsureList = function()
      if config.lsp == "pylsp" then
        return { "pylsp" }
      end
      if config.lsp == "ruff-lsp" then
        return { "ruff-lsp" }
      end
      return {}
    end,

    getLSPConfigMap = function()
      if config.lsp == "pylsp" then
        return {
          pylsp = require("insis.lsp.config.pylsp"),
        }
      end
      if config.lsp == "ruff-lsp" then
        return {
          pylsp = require("insis.lsp.config.ruff-lsp"),
        }
      end
      return {}
    end,

    getToolEnsureList = function()
      if config.formatter == "black" then
        return { "black" }
      end
      if config.formatter == "ruff" then
        return { "ruff" }
      end
      return {}
    end,

    getNulllsSources = function()
      local null_ls = pRequire("null-ls")
      if not null_ls then
        return {}
      end
      if config.formatter == "black" then
        return { null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }) }
      end
      if config.formatter == "ruff" then
        return { null_ls.builtins.formatting.ruff }
      end
      return {}
    end,

    getNeotestAdapters = function()
      return {}
    end,
  }
end
