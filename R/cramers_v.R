cramers_v <- 
function(contingency_table) {
    CV <- sqrt(chisq.test(contingency_table, correct = FALSE)$statistic /
              (sum(contingency_table) * min(dim(contingency_table) - 1)))

    as.numeric(CV)
}