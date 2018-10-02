include: "dwh_d_department.view.lkml"

view: xtd_dwh_d_department {
  extends: [dwh_d_department]
  #label: "lbl_vw_department"




#   dimension: is_requesting {
#     label: "lbl_dim_department_is_requesting"
#     type: string
#     sql: ${TABLE}.IS_REQUESTING ;;
#   }
#
#   dimension: is_performing {
#     label: "lbl_dim_department_is_performing"
#     type: string
#     sql: ${TABLE}.IS_REQUESTING ;;
#   }

}
