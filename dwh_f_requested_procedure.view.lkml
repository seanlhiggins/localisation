view: dwh_f_requested_procedure{

  view_label: "lbl_vw_requested_procedure"
  extension: required

  sql_table_name: DWH_AGILITY.F_REQUESTED_PROCEDURE ;;


  dimension_group: datetime_ordered {
    #group_label: "lbl_dim_ordered_procedure_referral_date"
    #label: "lbl_dim_ordered_procedure_referral_date"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATETIME_ORDERED ;;
  }

  dimension: patient_age_at_referral{
    label: "lbl_dim_ordered_procedure_patient_age_at_referral"
    sql:  CASE WHEN NVL(ROUND(MONTHS_BETWEEN(${TABLE}.DATETIME_ORDERED,${dwh_d_patient.date_of_birth_raw})/12,0), 0) < 0 THEN 0 ELSE ROUND(MONTHS_BETWEEN(${TABLE}.DATETIME_ORDERED,${dwh_d_patient.date_of_birth_raw})/12,0) END;;
  }

  # dimension: accessionnr_proc_level {
  #   label: "lbl_hidden"
  #   hidden: yes
  #   type: string
  #   sql: ${TABLE}.ACCESSIONNR_PROC_LEVEL ;;
  # }

  # dimension: accessionnr_servreq_level {
  #   label: "lbl_hidden"
  #   hidden:  yes
  #   type: string
  #   sql: ${TABLE}.ACCESSIONNR_SERVREQ_LEVEL ;;
  # }


  ######################
  #     Measures       #
  ######################

  measure: count {
    view_label: "lbl_measures"
    label: "lbl_ms_ordered_procedure_count"
    type: count
    drill_fields: []
  }


  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: requested_procedure_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.REQUESTED_PROCEDURE_BK ;;
  }

  dimension: patient_type_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.patient_type_sk ;;
  }

  dimension: acq_trsf_patient_class_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.acq_trsf_patient_class_sk ;;
  }

  dimension: procedure_definition_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.procedure_definition_sk ;;
  }

  dimension: performing_department_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.performing_department_sk ;;
  }

  dimension: requesting_department_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.requesting_department_sk ;;
  }

  dimension: requesting_physician_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.requesting_physician_sk ;;
  }

  dimension: modality_type_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.modality_type_sk ;;
  }

  dimension: modality_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.modality_sk ;;
  }

  dimension: patient_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.patient_sk ;;
  }

}
