# C = cost of item; E = elasticity
# Optimal price = C(E/(E+1))
elasticity <-
function(cost, elasticity) {
  cost * (elasticity/(elasticity + 1))
}
