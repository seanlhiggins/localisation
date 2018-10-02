view: dwh_d_professional {
  sql_table_name: DWH_AGILITY.D_PROFESSIONAL ;;
  view_label: "lbl_vw_professional"
  extension: required

  dimension: active {
    label: "lbl_dim_professional_active"
    type: string
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: code {
    label: "lbl_dim_professional_code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: first_name {
    label: "lbl_dim_professional_first_name"
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: last_name {
    label: "lbl_dim_professional_last_name"
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: full_name {
    label: "lbl_dim_professional_full_name"
    type: string
    sql:   ${last_name} || ' ' || ${first_name};;
  }

  dimension: maiden_name {
    label: "lbl_dim_professional_maiden_name"
    type: string
    sql: ${TABLE}.MAIDEN_NAME ;;
  }

  dimension: middle_name {
    label: "lbl_dim_professional_middle_name"
    type: string
    sql: ${TABLE}.MIDDLE_NAME ;;
  }

  dimension: is_external {
    label: "lbl_dim_professional_is_external"
    type: string
    sql: ${TABLE}.IS_EXTERNAL ;;
  }


  ############################################################
  #     Hidden columns (for join/predicate purposes etc ...  #
  ############################################################


  dimension: is_physician {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.IS_PHYSICIAN ;;
  }

  dimension: is_technologist {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.IS_TECHNOLOGIST ;;
  }

  dimension: is_transcriptionist {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.IS_TRANSCRIPTIONIST ;;
  }



  dimension: occurs_as_admitting {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_ADMITTING ;;
  }

  dimension: occurs_as_attending {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_ATTENDING ;;
  }

  dimension: occurs_as_conf_ptcp {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_CONF_PTCP ;;
  }

  dimension: occurs_as_pcp {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_PCP ;;
  }

  dimension: occurs_as_performing {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_PERFORMING ;;
  }

  dimension: occurs_as_referring {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REFERRING ;;
  }

  dimension: occurs_as_rep_author {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REP_AUTHOR ;;
  }

  dimension: occurs_as_rep_partvalid {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REP_PARTVALID ;;
  }

  dimension: occurs_as_rep_reviewer {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REP_REVIEWER ;;
  }

  dimension: occurs_as_rep_transcr {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REP_TRANSCR ;;
  }

  dimension: occurs_as_rep_valid {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REP_VALID ;;
  }

  dimension: occurs_as_requesting {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REQUESTING ;;
  }

  dimension: occurs_as_reviewing {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_REVIEWING ;;
  }

  dimension: occurs_as_technologist {
    label: "lbl_hidden"
    type: string
    hidden: yes
    sql: ${TABLE}.OCCURS_AS_TECHNOLOGIST ;;
  }


  dimension: professional_bk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.PROFESSIONAL_BK ;;
  }

  dimension: professional_sk {
    label: "lbl_hidden"
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.PROFESSIONAL_SK ;;
  }

  dimension: professional_type {
    label: "lbl_hidden"
    hidden: yes
    type: number
    sql: ${TABLE}.PROFESSIONAL_TYPE ;;
  }

}
