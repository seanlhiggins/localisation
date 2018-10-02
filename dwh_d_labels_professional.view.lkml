view: dwh_d_labels_professional {

  view_label: "lbl_vw_professional_labels"
  extension: required

  derived_table: {
    sql:
        select bg.professional_sk, bg.grouping_label_sk, l.CODE, l.DESCRIPTION NAME
        from  DWH_AGILITY.BRIDGE_GROUPING_PROFESSIONAL bg
        inner join DWH_AGILITY.D_GROUPING_LABEL l ON bg.GROUPING_LABEL_SK = l.GROUPING_LABEL_SK
       ;;
  }

  dimension: label_code {
    label: "lbl_dim_professional_label_code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: label_name {
    label: "lbl_dim_professional_label_name"
    type: string
    sql: ${TABLE}.NAME ;;
  }

  #############################################################
  #     Hidden columns (for join/predicate purposes etc ...)  #
  #############################################################

  dimension: compound_primary_key {
    label: "lbl_hidden"
    primary_key: yes
    hidden: yes
    sql: CONCAT(${TABLE}.professional_sk, '-', ${TABLE}.grouping_label_sk) ;;
  }

  dimension: professional_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.professional_sk ;;
  }

  dimension: grouping_label_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.grouping_label_sk ;;
  }

}
