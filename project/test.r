#Write out the analysis results
dge_results = topTreat(tfit, n = Inf)
## Saving output ####
saveRDS(dge_results, paste("KCLIP_DGE_Analysis_Results.Rds"))
df <- as.data.frame(ppe_imputed_tmp)
df$Gene.names <- rownames(ppe_imputed_tmp)
write_xlsx(dge_results,"KCLIP_dge_results.xlsx")
write.fit(tfit, dt, file="KCLIP_tfit_results.txt")
