$setglobal ds \

$ifthen.unix %system.filesys% == UNIX
$setglobal ds /
$endif.unix

$set gmszip "%gams.sysdir%%ds%gmszip"

* Set path for where the output files will be stored
$setglobal outputsPath 'outputs%ds%'

* Set name of output gdx file
$setglobal gdxFileName '%outputsPath%rep_%fname%.gdx'

* Set name of input gdx file
$setglobal inFile 'inputs_case%ds%inputs.gdx'

* This file exports outputs parameters into csv files, which facilitates viewing those outputs in Bokeh
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_avail > %outputsPath%cap_avail.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_deg_icrt > %outputsPath%cap_deg_icrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_firm > %outputsPath%cap_firm.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_firm_iter > %outputsPath%cap_firm_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_icrt > %outputsPath%cap_icrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_iter > %outputsPath%cap_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_ann_out > %outputsPath%cap_new_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_bin_out > %outputsPath%cap_new_bin_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_cc > %outputsPath%cap_new_cc.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_icrt > %outputsPath%cap_new_icrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_out > %outputsPath%cap_new_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_out > %outputsPath%cap.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cc_new > %outputsPath%cc_new.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cost_scale > %outputsPath%cost_scale.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_all_ann > %outputsPath%curt_all_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_new > %outputsPath%curt_new.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_out > %outputsPath%curt_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_out_ann > %outputsPath%curt_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_rate > %outputsPath%curt_rate.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_tot_iter > %outputsPath%curt_tot_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_nat > %outputsPath%emit_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_r > %outputsPath%emit_r.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=error_check > %outputsPath%error_check.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_icrt > %outputsPath%gen_icrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_icrt_uncurt > %outputsPath%gen_icrt_uncurt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_iter > %outputsPath%gen_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_new_uncurt > %outputsPath%gen_new_uncurt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_out > %outputsPath%gen_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_out_ann > %outputsPath%gen_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=invtran_out > %outputsPath%invtran_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe > %outputsPath%lcoe.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe_cf_act > %outputsPath%lcoe_cf_act.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe_fullpol > %outputsPath%lcoe_fullpol.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe_nopol > %outputsPath%lcoe_nopol.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=load_rt > %outputsPath%load_rt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=losses_ann > %outputsPath%losses_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=losses_tran_h > %outputsPath%losses_tran_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=m_capacity_exog > %outputsPath%m_capacity_exog.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=objfn_raw > %outputsPath%objfn_raw.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=opRes_supply > %outputsPath%opRes_supply.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=opRes_supply_h > %outputsPath%opRes_supply_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=pvf_capital > %outputsPath%pvf_capital.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=pvf_onm > %outputsPath%pvf_onm.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=raw_inv_cost > %outputsPath%raw_inv_cost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=raw_op_cost > %outputsPath%raw_op_cost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=reduced_cost > %outputsPath%reduced_cost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repbioprice > %outputsPath%repbioprice.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasprice > %outputsPath%repgasprice.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasprice_r > %outputsPath%repgasprice_r.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasprice_nat > %outputsPath%repgasprice_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasquant > %outputsPath%repgasquant.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasquant_r > %outputsPath%repgasquant_r.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasquant_nat > %outputsPath%repgasquant_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=reqt_price > %outputsPath%reqt_price.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=reqt_quant > %outputsPath%reqt_quant.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=ret_ann_out > %outputsPath%ret_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=ret_out > %outputsPath%ret_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=stor_inout > %outputsPath%stor_inout.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost > %outputsPath%systemcost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_bulk > %outputsPath%systemcost_bulk.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_bulk_ew > %outputsPath%systemcost_bulk_ew.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_mi_out > %outputsPath%tran_mi_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_out > %outputsPath%tran_out.csv'

*The following files are used in the ReEDS-to-PLEXOS data translation
$call 'gdxdump %inFile% format=csv epsout=0 symb=cost_vom > inputs_case%ds%cost_vom.csv'
$call 'gdxdump %inFile% format=csv epsout=0 symb=emit_rate > inputs_case%ds%emit_rate.csv'
$call 'gdxdump %inFile% format=csv epsout=0 symb=fuel_price > inputs_case%ds%fuel_price.csv'
$call 'gdxdump %inFile% format=csv epsout=0 symb=heat_rate > inputs_case%ds%heat_rate.csv'

*Move variability files
*###* Replace with updated output files
$call 'gdxmerge outputs%ds%variabilityFiles%ds%*%fname%*.gdx'
$call '"%gmszip%" %outputsPath%variabilityFiles%ds%variability.zip merged.gdx'
$call 'rm outputs%ds%variabilityFiles%ds%*%fname%*.gdx'

*Move other outputs gdx files
$call 'gdxmerge outputs%ds%variabilityFiles%ds%*%fname%*.gdx'
$call '"%gmszip%" %outputsPath%gdxFiles.zip merged.gdx'
$call 'rm outputs%ds%variabilityFiles%ds%*%fname%*.gdx'
