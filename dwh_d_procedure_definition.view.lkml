view: dwh_d_procedure_definition {
  sql_table_name: DWH_AGILITY.D_PROCEDURE_DEFINITION ;;
  view_label: "lbl_vw_procedure_definition"
  extension: required

  dimension: code {
    label: "lbl_dim_procedure_code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    label: "lbl_dim_procedure_name"
    type: string
    sql: ${TABLE}.NAME ;;
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: procedure_definition_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.PROCEDURE_DEFINITION_BK ;;
  }

  dimension: procedure_definition_sk {
    label: "lbl_hidden"
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.PROCEDURE_DEFINITION_SK ;;
  }

}
