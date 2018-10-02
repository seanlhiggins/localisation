view: dwh_d_department {
  sql_table_name: DWH_AGILITY.D_DEPARTMENT ;;
  view_label: "lbl_vw_department"
  extension: required


  dimension: active {
    label: "lbl_dim_department_active"
    type: string
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: department_code {
    label: "lbl_dim_department_code"
    type: string
    sql: ${TABLE}.DEPARTMENT_CODE ;;
  }

  dimension: name {
    label: "lbl_dim_department_name"
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: department_type_code {
    label: "lbl_dim_department_type_code"
    type: string
    sql: ${TABLE}.DEPARTMENT_TYPE_CODE ;;
  }

  dimension: department_type_name {
    label: "lbl_dim_department_type_name"
    type: string
    sql: ${TABLE}.DEPARTMENT_TYPE_NAME ;;
  }

  dimension: is_external {
    label: "lbl_dim_department_is_external"
    type: string
    sql: ${TABLE}.IS_EXTERNAL ;;
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: department_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.DEPARTMENT_BK ;;
  }

  dimension: department_sk {
    label: "lbl_hidden"
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.DEPARTMENT_SK ;;
  }

  dimension: parent_department_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.PARENT_DEPARTMENT_SK ;;
  }

  dimension: facility_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.FACILITY_SK ;;
  }

#   dimension: occurs_as_attending {
#     type: string
#     hidden: yes
#     sql: ${TABLE}.OCCURS_AS_ATTENDING ;;
#   }
#
#   dimension: occurs_as_performing {
#     type: string
#     hidden: yes
#     sql: ${TABLE}.OCCURS_AS_PERFORMING ;;
#   }
#
#   dimension: occurs_as_requesting {
#     type: string
#     hidden: yes
#     sql: ${TABLE}.OCCURS_AS_REQUESTING ;;
#   }

}
