view: dwh_d_modality_type {
  sql_table_name: DWH_AGILITY.D_MODALITY_TYPE ;;
  view_label: "lbl_vw_modality_type"
  extension: required

  dimension: code {
    label: "lbl_dim_modality_type_code"
    type: string
    #group_label:"test"
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    label: "lbl_dim_modality_type_name"
    #group_label:"test"
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: dicom_code {
    label: "lbl_dim_modality_type_dicom_code"
    type: string
    sql: ${TABLE}.DICOM_CODE ;;
  }

  dimension: dicom_name {
    label: "lbl_dim_modality_type_dicom_name"
    type: string
    sql: ${TABLE}.DICOM_NAME ;;
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: modality_type_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.MODALITY_TYPE_SK ;;
  }

}
