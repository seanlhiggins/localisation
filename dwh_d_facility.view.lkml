view: dwh_d_facility {
  sql_table_name: DWH_AGILITY.D_FACILITY ;;
  view_label: "lbl_vw_facility"
  extension: required

  dimension: active {
    label: "lbl_dim_facility_active"
    type: string
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: facility_code {
    type: string
    label: "lbl_dim_facility_code"
    sql: ${TABLE}.FACILITY_CODE ;;
  }

  dimension: name {
    type: string
    label: "lbl_dim_facility_name"
    sql: ${TABLE}.NAME ;;
  }

  dimension: is_external {
    label: "lbl_dim_facility_is_external"
    type: string
    sql: ${TABLE}.IS_EXTERNAL ;;
  }

  dimension: facility_type_code {
    label: "lbl_dim_facility_type_code"
    type: string
    hidden: yes
    sql: ${TABLE}.FACILITY_TYPE_CODE ;;
  }

  dimension: facility_type_name {
    label: "lbl_dim_facility_type_name"
    type: string
    hidden: yes
    sql: ${TABLE}.FACILITY_TYPE_NAME ;;
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: facility_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.FACILITY_BK ;;
  }

  dimension: facility_sk {
    label: "lbl_hidden"
    type: number
    hidden:  yes
    primary_key: yes
    sql: ${TABLE}.FACILITY_SK ;;
  }

  dimension: occurs_as_attending {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_ATTENDING ;;
  }

  dimension: occurs_as_requesting {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REQUESTING ;;
  }

}
