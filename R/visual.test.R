visual.test <-
function(x, y) {
  #------------------------------
  # Visual test for association
  #------------------------------
  # Save current plot settings to revert back to later
  oldpar <- par(no.readonly = TRUE)

  # Set all margins to 0
  par(mar=c(0, 0, 0, 0))

  # Build a randomized layout matrix
  m <- matrix(sample(1:4), 2, 2)
  layout(m, 1, 1)

  # Plot actual scatterplot somewhere in the layout grid
  plot(x, y, pch=20)
  abline(0, 0, col="red", lwd=1)

  # Plot three random scatterplots somewhere in the layout grid
  for (i in 1:3) {
    plot(x, sample(y), pch=20)
    abline(0, 0, col="red", lwd=1)
  }

  # Revert to original plot settings
  par(oldpar) 
}
