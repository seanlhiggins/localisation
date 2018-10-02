include: "dwh_f_requested_procedure.view.lkml"

view: xtd_dwh_f_requested_procedure {
  extends: [dwh_f_requested_procedure]
  #label: "lbl_vw_requested_procedure"



  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: procedure_plan_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.procedure_plan_sk ;;
  }

}
