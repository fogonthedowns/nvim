-- configure yamlls ls:
require('lspconfig')['yamlls'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0/deployment.json"] = "/*-deployment.yaml",
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0/service.json"] = "/*-service.yaml",
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0/configmap.json"] = "/*-configmap.yaml",
        ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.0/schema.yaml"] = "/*-openapi.yamlL:"
      }
    }
  }
}
