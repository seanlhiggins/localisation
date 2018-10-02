view: dwh_d_patient_type {
  sql_table_name: DWH_AGILITY.D_PATIENT_TYPE ;;
  view_label: "lbl_vw_patient_type"
  extension: required

  dimension: code {
    label: "lbl_dim_patient_type_code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    label: "lbl_dim_patient_type_name"
    type: string
    sql: ${TABLE}.NAME ;;
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: patient_type_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.PATIENT_TYPE_BK ;;
  }

  dimension: patient_type_sk {
    label: "lbl_hidden"
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.PATIENT_TYPE_SK ;;
  }

}
