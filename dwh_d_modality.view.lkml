view: dwh_d_modality {
  sql_table_name: DWH_AGILITY.D_MODALITY ;;
  view_label: "lbl_vw_modality"
  #view_label: "Acquisition station"
  extension: required

  dimension: code {
    label: "lbl_dim_modality_code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    label: "lbl_dim_modality_name"
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: aetitle {
    label: "lbl_dim_modality_aetitle"
    type: string
    sql: ${TABLE}.AETITLE ;;
  }

  dimension: calling_aetitle {
    label: "lbl_dim_modality_calling_aetitle"
    type: string
    sql: ${TABLE}.CALLING_AETITLE ;;
  }



  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: modality_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.MODALITY_BK ;;
  }

  dimension: modality_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.MODALITY_SK ;;
  }

  dimension: modality_type_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.MODALITY_TYPE_SK ;;
  }

}
