view: dwh_d_procedure_plan {
  sql_table_name: DWH_AGILITY.D_PROCEDURE_PLAN ;;
  view_label: "procedure plan"


  dimension: code {
    label: "code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    label: "name"
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: active {
    label: "active"
    type: string
    sql: ${TABLE}.ACTIVE ;;
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: procedure_plan_bk {
    type: number
    hidden: yes
    sql: ${TABLE}.PROCEDURE_PLAN_BK ;;
  }

  dimension: procedure_plan_sk {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.PROCEDURE_PLAN_SK ;;
  }

}
