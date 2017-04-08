# ideas / proposals / references


A concise rationale for a clearly defined set of "ranges" was given by Wilding et al. in the attached paper from the late '60s.

## Possible Goals

### Refinement of "low, rv, high" datbase concepts


### Refinement of "range in characteristics" concept
 

## Why Percentiles?

* Percentiles require no distributional assumptions and are bound to the data from which they are computed. This means that percentiles can provide meaningful benchmarks for both normal and non-normal distributions, and, the limits will always fall within the min/max of the observed data.

* Percentiles have a direct interpretation: "given the available data, we know that soil property X is <= Y 5% of the time, and, <= Z 95% of the time". This same statement can be framed using probabilities or proportions: "given the available data, soil property X is within the range of Y--Z 90% of the time".

* Percentiles are simple to calculate, requiring at least 3, but ideally 10 observations.



## Discussions

* many folks aren't familiar with percentiles: establishing a definition for low,rv,high based on percentiles will require some education

* there is considerable fear about how a new standard will cast doubt on previously established data

* there is a concern that "computing" low,rv,high, takes away from our ability to interject our "expert knowledge"

* there is no consensus on the specific percentiles to pin our low and high concepts to: some argue for 5th/95th, others for 10th/90th, and some others for floating percentiles for different soil properties

 

## Implimentation
I think that with a little work on the language, we can cover our past ranges and possible future data-gaps by crafting:

* guidelines on the use of percentiles for current / future work, given a reasonable (minimum) sample size

* language to describe how past ranges may have been crafted

* a short discussion on how percentiles are the "theoretical aspiration" for our ranges, but may not always be feasible given data availability or quality




# Resources

 * [Harrell-Davis quantile estimator](https://garstats.wordpress.com/2016/06/09/the-harrell-davis-quantile-estimator/) -- [link to original article](https://www.jstor.org/stable/2335999?seq=1#page_scan_tab_contents)
 
 * comparison of groups via [shift function](https://garstats.wordpress.com/2016/07/12/shift-function/), [illustrated version](https://garstats.wordpress.com/2017/02/04/shift-function-illustration/)
 
 * 



# References

https://casoilresource.lawr.ucdavis.edu/wiki/Low-rv-high

Hudson, B.D. 1980. Ranges in characteristics-how valid are they? Soil Survey Horizons. 21:7-11.

Hudson, B.D. 1990. Concepts of soil mapping and interpretation. Soil Survey Horizons. 31:36-72.

Hyndman, R. J. and Fan, Y. 1996. Sample Quantiles in Statistical Packages. The American Statistician. 50: 361-365.

Indorante, S.J. 2007. Foundational Soil Survey Data-A Case for Linking Basic Soil Data and Interpretations to the Official Series Description. Soil Survey Horizons. 48:43-45.

Jansen, I. and Arnold, R. 1976. Defining Ranges of Soil Characteristics, in "Spatial Variabilities of Soils and Landforms". SSSA Spec. Publ. 28. Soil Science Society of America, pp. 89-92.

Livingston, R. L. 2006. "Truthiness" and the National Soil Information System: How Are They Related? Soil Survey Horizons. 47:43-46.

Wilding, L., Scafer, G., Jones, R. 1964. Morley and Blount soils: A statistical summary of certain physical and chemical properties of some selected profiles from Ohio. Soil Sci. Soc. Proc. 28:674-679.

Young, F., Maatta, J., Hammer, R. 1991. Confidence Intervals for Soil Properties within Map Units in "Spatial Variabilities of Soils and Landforms". SSSA Spec. Publ. 28. Soil Science Society of America, pp. 213-230.

