include: "dwh_referring_community.model.lkml"

#label: "lbl_mdl_agfa_enterprise_imaging"

explore: xtd_dwh_f_requested_procedure {
  extends: [dwh_f_requested_procedure]

  #label: "lbl_xpl_referring_community"
  #view_label: "lbl_vw_referral_details"

  join:dwh_d_procedure_plan {
    type: inner
    sql_on: ${dwh_f_requested_procedure.procedure_plan_sk} = ${dwh_d_procedure_plan.procedure_plan_sk};;
    relationship: many_to_one
  }
}
