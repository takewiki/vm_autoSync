library(vmrdspkg)
library(cronR)
conn_erp = conn_vm_erp_test2()
conn_plm = conn_vm_plm_prd()

sync_PLMtoERP_Item_periodly(conn_plm = conn_plm,conn_erp = conn_erp )
sync_PLMtoERP_BOM_periodly(conn_plm = conn_plm,conn_erp = conn_erp )

Item_readIntoERP_ALL(conn=conn_erp)


bom_readIntoERP_ALL(conn = conn_erp)