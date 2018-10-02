view: dwh_d_patient {
  sql_table_name: DWH_AGILITY.D_PATIENT ;;
  view_label: "lbl_vw_patient"
  extension: required


  dimension_group: date_of_birth {
    #group_label: "lbl_dim_patient_date_of_birth"
    #label: "lbl_dim_patient_date_of_birth"
    type: time
    hidden: yes
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
    sql: ${TABLE}.DATE_OF_BIRTH ;;
  }


  dimension: patient_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.PATIENT_BK ;;
  }

  dimension: patient_sk {
    label: "lbl_hidden"
    type: number
    hidden:  yes
    primary_key: yes
    sql: ${TABLE}.PATIENT_SK ;;
  }

}
