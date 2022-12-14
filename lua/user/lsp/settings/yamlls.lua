return {
  redhat = { telemetry = { enabled = false } },
  yaml = {
    completion = true,
    validate = true,
    format = { enable = false }, -- we format with prettier via null-ls
    hover = true,
    schemaStore = {
      enable = true,
      url = "https://www.schemastore.org/api/json/catalog.json",
    },
    schemas = {},
    trace = { server = "debug" },
  },
}
