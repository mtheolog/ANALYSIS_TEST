dge <- calcNormFactors(dge, method = "TMM")
dge$samples$norm.factors
