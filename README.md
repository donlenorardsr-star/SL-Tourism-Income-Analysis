# Analysis of Sri Lankan Tourism Income
## Project Overview
This project mainly focus to investigate the key factors of tourism income in Sri Lanka which are tourism arrivals, tourism income, exchange rate (US doller), inflation of Sri Lanka, GDP of Sri 
Lanka as well as faced economy shocks and social shocks like LTTE war, Ester-attack, Covid-19. The primary objective of ths study is to build a robust econometric model that explains the variation in tourism revenue. 

## Tools 
- R - ggplot2, ggfortify, tidyverse, cars, tisbble

## Model Specification
The relationship is defined by the following equation; <br>
<strong> log(Income) = -6.118861 + 0.881608 log(Arrivals) + 0.265151 log(Exchange_rate) -0.003170 Inflation +  0.160563 War - 0.178192 Economy </strong> 



## Key Findings
- The model accuracy is 92.10%, that's mean the model explains 92.10% of the variation in tourism income.
- 1.00% increase in tourist arrivals leads to 0.88% increase in tourism income.
- 1.00% increase in the exchange rate relates with a 0.26% increase in tourism income.
- The civill war shock and economy shock insignificantly impacted to tourism income.

