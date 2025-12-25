data "azurerm_mssql_server" "sql_server_id" {
  name                = var.sql_server_name
  resource_group_name = var.resource_group_name
}


resource "azurerm_mssql_database" "sql_db" {
  name           = var.sql_database_name
  server_id      = data.azurerm_mssql_server.sql_server_id.id
  sku_name       = "Basic"
  max_size_gb    = 2
}