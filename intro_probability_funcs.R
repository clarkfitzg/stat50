# Goal: introduce R's probability functions

# In our text
# X ~ N(10, 3^2)
# P(X < 10)
pnorm(10, mean = 10, sd = 3)

# General structure for these functions:
# prefix + suffix

# Prefixes:
# d PMF or PDF
# p CDF
# q quantile
# r generate random samples from

# Suffixes:
# R                           Book (Navidi v.5)
# binom(size = 1, prob = p)   Bernoulli(p)
# binom(size = n, prob = p)   Binomial(n, p)
# pois(rate = lambda)         Poisson(lambda)
# norm(mean = mu, sd = sigma) N(mu, sigma^2)
# exp(rate = lambda)          Exp(lambda)

# X ~ Binomial(20, 0.7)
# P(X <= 13)
# This is a big pain to do by hand
pbinom(13, size = 20, prob = 0.7)

# P(X > 13)
1 - pbinom(13, size = 20, prob = 0.7)


# Example of plotting a PDF
x = seq(from = 0, to = 3, length.out = 100)
plot(x, dexp(x, rate = 4), type = "l", ylab = "probability density",
     main = "PDF's for an exponential distribution")
lines(x, dexp(x, rate = 2), lty = 2)
lines(x, dexp(x, rate = 1), lty = 3)
legend("topright", c("rate = 4", "rate = 2", "rate = 1"), lty = 1:3)
