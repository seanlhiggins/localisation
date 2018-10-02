view: dwh_d_labels_department {

  view_label: "lbl_vw_department_labels"
  extension: required

  derived_table: {
     sql:
        select bg.department_sk, bg.grouping_label_sk, l.CODE, l.DESCRIPTION NAME
        from  DWH_AGILITY.BRIDGE_GROUPING_DEPARTMENT bg
        inner join DWH_AGILITY.D_GROUPING_LABEL l ON bg.GROUPING_LABEL_SK = l.GROUPING_LABEL_SK
       ;;
   }

  dimension: label_code {
    label: "lbl_dim_department_label_code"
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: label_name {
    label: "lbl_dim_department_label_name"
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
    sql: CONCAT(${TABLE}.department_sk, '-', ${TABLE}.grouping_label_sk) ;;
  }

  dimension: department_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.department_sk ;;
  }

  dimension: grouping_label_sk {
    label: "lbl_hidden"
    type: number
    hidden: yes
    sql: ${TABLE}.grouping_label_sk ;;
  }

}
