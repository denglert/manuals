# List of available functions in `scipy.stats`

**References**
- https://docs.scipy.org/doc/scipy/reference/stats.html

## Continuous

- `alpha`: An alpha continuous random variable.
- `anglit`: An anglit continuous random variable.
- `arcsine`: An arcsine continuous random variable.
- `argus`: Argus distribution
- `beta`: A beta continuous random variable.
- `betaprime`: A beta prime continuous random variable.
- `bradford`: A Bradford continuous random variable.
- `burr`: A Burr (Type III) continuous random variable.
- `burr12`: A Burr (Type XII) continuous random variable.
- `cauchy`: A Cauchy continuous random variable.
- `chi`: A chi continuous random variable.
- `chi2`: A chi-squared continuous random variable.
- `cosine`: A cosine continuous random variable.
- `crystalball`: Crystalball distribution
- `dgamma`: A double gamma continuous random variable.
- `dweibull`: A double Weibull continuous random variable.
- `erlang`: An Erlang continuous random variable.
- `expon`: An exponential continuous random variable.
- `exponnorm`: An exponentially modified Normal continuous random variable.
- `exponweib`: An exponentiated Weibull continuous random variable.
- `exponpow`: An exponential power continuous random variable.
- `f`: An F continuous random variable.
- `fatiguelife`: A fatigue-life (Birnbaum-Saunders) continuous random variable.
- `fisk`: A Fisk continuous random variable.
- `foldcauchy`: A folded Cauchy continuous random variable.
- `foldnorm`: A folded normal continuous random variable.
- `frechet_r`: A frechet_r continuous random variable.
- `frechet_l`: A frechet_l continuous random variable.
- `genlogistic`: A generalized logistic continuous random variable.
- `gennorm`: A generalized normal continuous random variable.
- `genpareto`: A generalized Pareto continuous random variable.
- `genexpon`: A generalized exponential continuous random variable.
- `genextreme`: A generalized extreme value continuous random variable.
- `gausshyper`: A Gauss hypergeometric continuous random variable.
- `gamma`: A gamma continuous random variable.
- `gengamma`: A generalized gamma continuous random variable.
- `genhalflogistic`: A generalized half-logistic continuous random variable.
- `gilbrat`: A Gilbrat continuous random variable.
- `gompertz`: A Gompertz (or truncated Gumbel) continuous random variable.
- `gumbel_r`: A right-skewed Gumbel continuous random variable.
- `gumbel_l`: A left-skewed Gumbel continuous random variable.
- `halfcauchy`: A Half-Cauchy continuous random variable.
- `halflogistic`: A half-logistic continuous random variable.
- `halfnorm`: A half-normal continuous random variable.
- `halfgennorm`: The upper half of a generalized normal continuous random variable.
- `hypsecant`: A hyperbolic secant continuous random variable.
- `invgamma`: An inverted gamma continuous random variable.
- `invgauss`: An inverse Gaussian continuous random variable.
- `invweibull`: An inverted Weibull continuous random variable.
- `johnsonsb`: A Johnson SB continuous random variable.
- `johnsonsu`: A Johnson SU continuous random variable.
- `kappa4`: Kappa 4 parameter distribution.
- `kappa3`: Kappa 3 parameter distribution.
- `ksone`: General Kolmogorov-Smirnov one-sided test.
- `kstwobign`: Kolmogorov-Smirnov two-sided test for large N.
- `laplace`: A Laplace continuous random variable.
- `levy`: A Levy continuous random variable.
- `levy_l`: A left-skewed Levy continuous random variable.
- `levy_stable`: A Levy-stable continuous random variable.
- `logistic`: A logistic (or Sech-squared) continuous random variable.
- `loggamma`: A log gamma continuous random variable.
- `loglaplace`: A log-Laplace continuous random variable.
- `lognorm`: A lognormal continuous random variable.
- `lomax`: A Lomax (Pareto of the second kind) continuous random variable.
- `maxwell`: A Maxwell continuous random variable.
- `mielke`: A Mielke’s Beta-Kappa continuous random variable.
- `moyal`: A Moyal continuous random variable.
- `nakagami`: A Nakagami continuous random variable.
- `ncx2`: A non-central chi-squared continuous random variable.
- `ncf`: A non-central F distribution continuous random variable.
- `nct`: A non-central Student’s T continuous random variable.
- `norm`: A normal continuous random variable.
- `norminvgauss`: A Normal Inverse Gaussian continuous random variable.
- `pareto`: A Pareto continuous random variable.
- `pearson3`: A pearson type III continuous random variable.
- `powerlaw`: A power-function continuous random variable.
- `powerlognorm`: A power log-normal continuous random variable.
- `powernorm`: A power normal continuous random variable.
- `rdist`: An R-distributed continuous random variable.
- `reciprocal`: A reciprocal continuous random variable.
- `rayleigh`: A Rayleigh continuous random variable.
- `rice`: A Rice continuous random variable.
- `recipinvgauss`: A reciprocal inverse Gaussian continuous random variable.
- `semicircular`: A semicircular continuous random variable.
- `skewnorm`: A skew-normal random variable.
- `t`: A Student’s T continuous random variable.
- `trapz`: A trapezoidal continuous random variable.
- `triang`: A triangular continuous random variable.
- `truncexpon`: A truncated exponential continuous random variable.
- `truncnorm`: A truncated normal continuous random variable.
- `tukeylambda`: A Tukey-Lamdba continuous random variable.
- `uniform`: A uniform continuous random variable.
- `vonmises`: A Von Mises continuous random variable.
- `vonmises_line`: A Von Mises continuous random variable.
- `wald`: A Wald continuous random variable.
- `weibull_min`: Weibull minimum continuous random variable.
- `weibull_max`: Weibull maximum continuous random variable.
- `wrapcauchy`: A wrapped Cauchy continuous random variable.


## Multivariate distributions

- `multivariate_normal`: A multivariate normal random variable.
- `matrix_normal`: A matrix normal random variable.
- `dirichlet`: A Dirichlet random variable.
- `wishart`: A Wishart random variable.
- `invwishart`: An inverse Wishart random variable.
- `multinomial`: A multinomial random variable.
- `special_ortho_group`: A matrix-valued SO(N) random variable.
- `ortho_group`: A matrix-valued O(N) random variable.
- `unitary_group`: A matrix-valued U(N) random variable.
- `random_correlation`: A random correlation matrix.


## Discrete functions

- `bernoulli`: A Bernoulli discrete random variable.
- `binom`: A binomial discrete random variable.
- `boltzmann`: A Boltzmann (Truncated Discrete Exponential) random variable.
- `dlaplace`: A Laplacian discrete random variable.
- `geom`: A geometric discrete random variable.
- `hypergeom`: A hypergeometric discrete random variable.
- `logser`: A Logarithmic (Log-Series, Series) discrete random variable.
- `nbinom`: A negative binomial discrete random variable.
- `planck`: A Planck discrete exponential random variable.
- `poisson`: A Poisson discrete random variable.
- `randint`: A uniform discrete random variable.
- `skellam`: A Skellam discrete random variable.
- `zipf`: A Zipf discrete random variable.

## Statistical functions

- `describe(a[, axis, ddof, bias, nan_policy])`: Compute several descriptive statistics of the passed array.
- `gmean(a[, axis, dtype])`: Compute the geometric mean along the specified axis.
- `hmean(a[, axis, dtype])`: Calculate the harmonic mean along the specified axis.
- `kurtosis(a[, axis, fisher, bias, nan_policy])`: Compute the kurtosis (Fisher or Pearson) of a dataset.
- `kurtosistest(a[, axis, nan_policy])`: Test whether a dataset has normal kurtosis.
- `mode(a[, axis, nan_policy])`: Return an array of the modal (most common) value in the passed array.
- `moment(a[, moment, axis, nan_policy])`: Calculate the nth moment about the mean for a sample.
- `normaltest(a[, axis, nan_policy])`: Test whether a sample differs from a normal distribution.
- `skew(a[, axis, bias, nan_policy])`: Compute the skewness of a data set.
- `skewtest(a[, axis, nan_policy])`: Test whether the skew is different from the normal distribution.
- `kstat(data[, n])`: Return the nth k-statistic (1<=n<=4 so far).
- `kstatvar(data[, n])`: Returns an unbiased estimator of the variance of the k-statistic.
- `tmean(a[, limits, inclusive, axis])`: Compute the trimmed mean.
- `tvar(a[, limits, inclusive, axis, ddof])`: Compute the trimmed variance.
- `tmin(a[, lowerlimit, axis, inclusive, …])`: Compute the trimmed minimum.
- `tmax(a[, upperlimit, axis, inclusive, …])`: Compute the trimmed maximum.
- `tstd(a[, limits, inclusive, axis, ddof])`: Compute the trimmed sample standard deviation.
- `tsem(a[, limits, inclusive, axis, ddof])`: Compute the trimmed standard error of the mean.
- `variation(a[, axis, nan_policy])`: Compute the coefficient of variation, the ratio of the biased standard deviation to the mean.
- `find_repeats(arr)`: Find repeats and repeat counts.
- `trim_mean(a, proportiontocut[, axis])`: Return mean of array after trimming distribution from both tails.
- `cumfreq(a[, numbins, defaultreallimits, weights])`: Return a cumulative frequency histogram, using the histogram function.
- `itemfreq(*args, **kwds)`: itemfreq is deprecated! itemfreq is deprecated and will be removed in a future version.
- `percentileofscore(a, score[, kind])`: The percentile rank of a score relative to a list of scores.
- `scoreatpercentile(a, per[, limit, …])`: Calculate the score at a given percentile of the input sequence.
- `relfreq(a[, numbins, defaultreallimits, weights])`: Return a relative frequency histogram, using the histogram function.
- `binned_statistic(x, values[, statistic, …])`: Compute a binned statistic for one or more sets of data.
- `binned_statistic_2d(x, y, values[, …])`: Compute a bidimensional binned statistic for one or more sets of data.
- `binned_statistic_dd(sample, values[, …])`: Compute a multidimensional binned statistic for a set of data.
- `obrientransform(*args)`: Compute the O’Brien transform on input data (any number of arrays).
- `bayes_mvs(data[, alpha])`: Bayesian confidence intervals for the mean, var, and std.
- `mvsdist(data)`: ‘Frozen’ distributions for mean, variance, and standard deviation of data.
- `sem(a[, axis, ddof, nan_policy])`: Calculate the standard error of the mean (or standard error of measurement) of the values in the input array.
- `zmap(scores, compare[, axis, ddof])`: Calculate the relative z-scores.
- `zscore(a[, axis, ddof])`: Calculate the z score of each value in the sample, relative to the sample mean and standard deviation.
- `iqr(x[, axis, rng, scale, nan_policy, …])`: Compute the interquartile range of the data along the specified axis.
- `sigmaclip(a[, low, high])`: Iterative sigma-clipping of array elements.
- `trimboth(a, proportiontocut[, axis])`: Slices off a proportion of items from both ends of an array.
- `trim1(a, proportiontocut[, tail, axis])`: Slices off a proportion from ONE end of the passed array distribution.
- `f_oneway(*args)`: Performs a 1-way ANOVA.
- `pearsonr(x, y)`: Calculate a Pearson correlation coefficient and the p-value for testing non-correlation.
- `spearmanr(a[, b, axis, nan_policy])`: Calculate a Spearman rank-order correlation coefficient and the p-value to test for non-correlation.
- `pointbiserialr(x, y)`: Calculate a point biserial correlation coefficient and its p-value.
- `kendalltau(x, y[, initial_lexsort, nan_policy])`: Calculate Kendall’s tau, a correlation measure for ordinal data.
- `weightedtau(x, y[, rank, weigher, additive])`: Compute a weighted version of Kendall’s.
- `linregress(x[, y])`: Calculate a linear least-squares regression for two sets of measurements.
- `theilslopes(y[, x, alpha])`: Computes the Theil-Sen estimator for a set of points (x, y).
- `ttest_1samp(a, popmean[, axis, nan_policy])`: Calculate the T-test for the mean of ONE group of scores.
- `ttest_ind(a, b[, axis, equal_var, nan_policy])`: Calculate the T-test for the means of two independent samples of scores.
- `ttest_ind_from_stats(mean1, std1, nobs1, …)`: T-test for means of two independent samples from descriptive statistics.
- `ttest_rel(a, b[, axis, nan_policy])`: Calculate the T-test on TWO RELATED samples of scores, a and b.
- `kstest(rvs, cdf[, args, N, alternative, mode])`: Perform the Kolmogorov-Smirnov test for goodness of fit.
- `chisquare(f_obs[, f_exp, ddof, axis])`: Calculate a one-way chi square test.
- `power_divergence(f_obs[, f_exp, ddof, axis, …])`: Cressie-Read power divergence statistic and goodness of fit test.
- `ks_2samp(data1, data2)`: Compute the Kolmogorov-Smirnov statistic on 2 samples.
- `mannwhitneyu(x, y[, use_continuity, alternative])`: Compute the Mann-Whitney rank test on samples x and y.
- `tiecorrect(rankvals)`: Tie correction factor for ties in the Mann-Whitney U and Kruskal-Wallis H tests.
- `rankdata(a[, method])`: Assign ranks to data, dealing with ties appropriately.
- `ranksums(x, y)`: Compute the Wilcoxon rank-sum statistic for two samples.
- `wilcoxon(x[, y, zero_method, correction])`: Calculate the Wilcoxon signed-rank test.
- `kruskal(*args, **kwargs)`: Compute the Kruskal-Wallis H-test for independent samples
- `friedmanchisquare(*args)`: Compute the Friedman test for repeated measurements
- `combine_pvalues(pvalues[, method, weights])`: Methods for combining the p-values of independent tests bearing upon the same hypothesis.
- `jarque_bera(x)`: Perform the Jarque-Bera goodness of fit test on sample data.
- `ansari(x, y)`: Perform the Ansari-Bradley test for equal scale parameters
- `bartlett(*args)`: Perform Bartlett’s test for equal variances
- `levene(*args, **kwds)`: Perform Levene test for equal variances.
- `shapiro(x)`: Perform the Shapiro-Wilk test for normality.
- `anderson(x[, dist])`: Anderson-Darling test for data coming from a particular distribution
- `anderson_ksamp(samples[, midrank])`: The Anderson-Darling test for k-samples.
- `binom_test(x[, n, p, alternative])`: Perform a test that the probability of success is p.
- `fligner(*args, **kwds)`: Perform Fligner-Killeen test for equality of variance.
- `median_test(*args, **kwds)`: Mood’s median test.
- `mood(x, y[, axis])`: Perform Mood’s test for equal scale parameters.
- `boxcox(x[, lmbda, alpha])`: Return a positive dataset transformed by a Box-Cox power transformation.
- `boxcox_normmax(x[, brack, method])`: Compute optimal Box-Cox transform parameter for input data.
- `boxcox_llf(lmb, data)`: The boxcox log-likelihood function.
- `entropy(pk[, qk, base])`: Calculate the entropy of a distribution for given probability values.
- `wasserstein_distance(u_values, v_values[, …])`: Compute the first Wasserstein distance between two 1D distributions.
- `energy_distance(u_values, v_values[, …])`: Compute the energy distance between two 1D distributions.

## Circular statistical functions

- `circmean(samples[, high, low, axis])`: Compute the circular mean for samples in a range.
- `circvar(samples[, high, low, axis])`: Compute the circular variance for samples assumed to be in a range
- `circstd(samples[, high, low, axis])`: Compute the circular standard deviation for samples assumed to be in the range [low to high].

## Contingency table functions

- `chi2_contingency(observed[, correction, lambda_])`: Chi-square test of independence of variables in a contingency table.
- `contingency.expected_freq(observed)`: Compute the expected frequencies from a contingency table.
- `contingency.margins(a)`: Return a list of the marginal sums of the array a.
- `fisher_exact(table[, alternative])`: Performs a Fisher exact test on a 2x2 contingency table.

## Plot-tests


- `ppcc_max(x[, brack, dist])` Calculate the shape parameter that maximizes the PPCC
- `ppcc_plot(x, a, b[, dist, plot, N])` Calculate and optionally plot probability plot correlation coefficient.
- `probplot(x[, sparams, dist, fit, plot, rvalue])` Calculate quantiles for a probability plot, and optionally show the plot.
- `boxcox_normplot(x, la, lb[, plot, N])` Compute parameters for a Box-Cox normality plot, optionally show it.

## Masked statistics functions

- Statistical functions for masked arrays (`scipy.stats.mstats`)

## Univariate and multivariate kernel density estimation

- `gaussian_kde(dataset[, bw_method])`: Representation of a kernel-density estimate using Gaussian
  kernels.
