# H-S-Volatility-Model-MC
A Monte-Carlo simulation of the Heston Stochastic Volatility model ran in R

Introduced by Heston in A closed-form solution for options with stochastic volatility with appli-cations to bond and currency options (1993), the following code simulates the Heston Stochastic Volatility model using R, given by:

<a href="https://www.codecogs.com/eqnedit.php?latex=dY_t=(m-\sigma^2_t/2)dt&plus;\sigma_tdW_{1t}&space;\\&space;d\sigma^2_t=&space;\phi(\upsilon-\sigma^2_t)dt&plus;\eta\sigma_tW_{2t}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?dY_t=(m-\sigma^2_t/2)dt&plus;\sigma_tdW_{1t}&space;\\&space;d\sigma^2_t=&space;\phi(\upsilon-\sigma^2_t)dt&plus;\eta\sigma_tW_{2t}" title="dY_t=(m-\sigma^2_t/2)dt+\sigma_tdW_{1t} \\ d\sigma^2_t= \phi(\upsilon-\sigma^2_t)dt+\eta\sigma_tW_{2t}" /></a>
