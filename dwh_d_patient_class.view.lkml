view: dwh_d_patient_class {
  sql_table_name: DWH_AGILITY.D_PATIENT_CLASS ;;
  view_label: "lbl_vw_patient_class"
  extension: required

  dimension: code {
    label: "lbl_dim_patient_class_code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    label: "lbl_dim_patient_class_name"
    type: string
    sql: ${TABLE}.NAME ;;
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: patient_class_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.PATIENT_CLASS_BK ;;
  }

  dimension: patient_class_sk {
    label: "lbl_hidden"
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.PATIENT_CLASS_SK ;;
  }

}
