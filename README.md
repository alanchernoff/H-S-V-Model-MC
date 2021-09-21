# H-S-Volatility-Model-MC
A Monte-Carlo simulation of the Heston Stochastic Volatility model ran in R

Introduced by Heston in A closed-form solution for options with stochastic volatility with appli-cations to bond and currency options (1993), the following code simulates the Heston Stochastic Volatility model using R, given by:

 dY<sub>t</sub>=(m-&sigma;<sub>t</sub><sup>2</sup>/2)dt+&sigma;<sub>t</sub>dW<sub>1t</sub>
 
 d&sigma;<sup>2</sup><sub>t</sub>= &phi;(&upsilon;-&sigma;<sub>t</sub><sup>2</sup>)dt+&eta;&sigma;<sub>t</sub>W<sub>2t</sub>

Where &rho; is the correlation between Brownian motions W<sub>1t</sub> and W<sub>2t</sub>, and parameters m, &upsilon;, &eta;, &phi; and &rho; are set to parameter values deemed reasonable for stock price simulation, with set m = 0.05, &upsilon; = 0.04, &eta; = 0.5, &phi; = 5, and &rho; = -0.5.

The model uses one year as a time unit, and given the approximately 252 trading days in a year, one day is 1/252. Each day is given N=1560 observations, and paths are simulated with discrete time interval &Delta;<sub>N</sub> = (1/252)/N

Data is then sampled in 20, 10, and 5 minute intervals

Finally, a calculation of realized volatility for each of the simulations is given by &Sigma;<sub>i</sub>&sigma;<sub>i</sub>&Delta;<sub>N</sub>
