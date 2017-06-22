# Discussion and proposal on the topic of "range in characteristics" and the related "low-RV-high" definition

A concise rationale for a clearly defined set of "ranges" was given by Wilding et al. in late '60s. 
(Recent discussions among some Soil Science Division staff) [https://casoilresource.lawr.ucdavis.edu/wiki/Low-rv-high] have centered around the desire to have a quantitative definition for the "low, RV, and high" values, to better accomodate computationally derived values when available for populating the SSURGO database. The following proposal attempts to formulate a quantitative definition for these terms, while accomodating the legacy data for which no definition was specified.

## Proposal for changes to the National Soil Survey Handbook - new definitions of “low-representative value-high"

## Background

Currently the terms low, rv, and-high are mentioned in sections 618.2 and 618.3 of the NSSH, but not defined. A loose definition has
made sense because of the highly variable
methods used to populate the low, rv, and high values in all of the various
data fields in NASIS that represent a collection of many different vintages and
sources of soil survey data. And, for much of the uses of soil survey
information, this level of precision likely provides enough accuracy. Additionally,
this new more precise definition likely reflects how past data developers
have thought about the meaning of low-rv-high. 
We have always tended to populate the rv as a median or a mode, rather
than a mean - a commonly occuring value, near the center of the distribution of all observed values. We have always thought
about the low and high as values within the observed data set that approximated
not the extreme, but commonly observed, ends of the data distribution. 

For recent, ongoing, and future data collection efforts however, we aspire to populate
NASIS fields using as much field-collected data as possible. As our data
becomes more and more widely used, it has become increasingly urgent that we
establish more precise definitions for these data ranges. While acknowledging
that older data may not have been populated using this particular guidance,
updated definitions are needed for current work that can accommodate more
data-driven and modern approaches to computing soil survey data ranges. Clear definitions
will more completely convey our best available knowledge to users and provide a
standard to assure the correct uses and limitations of our data.

## Proposed definition for new section C. in Part 618.2

C.	For recent and newly populated information in NASIS, the representative values are meant to approximate the 50th percentile of the data. The low and high values are meant to approximate the 5th- 10th and the 90th-95th percentiles, respectively. The low, high, and representative values for data populated prior to this version of the National Soil Survey Handbook were not guided by the percentile approach but also generally approximate the current definition. The percentile approach is preferred over other measures of central tendency, such as the mean and standard deviation, because percentiles require no distributional assumptions and are bound to the data from which they are computed. This means that percentiles can provide benchmarks for the spread and central tendency for both normal and non-normal distributions, and, the limits will always fall within the min/max of the observed data. Even where data used to populate the SSURGO database are not computationally derived, the populated values are designed to approximate the aforementioned percentiles for the data set being described.

## Discussion

### Why Percentiles?

![](figures/CA630-5012-MAP-example.png)

* Percentiles require no distributional assumptions and are bound to the data from which they are computed. This means that percentiles can provide meaningful benchmarks for both normal and non-normal distributions, and, the limits will always fall within the min/max of the observed data.

* Percentiles have a direct interpretation: "given the available data, we know that soil property X is <= Y 5% of the time, and, <= Z 95% of the time". This same statement can be framed using probabilities or proportions: "given the available data, soil property X is within the range of Y--Z 90% of the time".

* Percentiles are simple to calculate, requiring at least 3, but ideally 10 observations.

[Visit this link for more discussion and graphical demonstrations of these concepts.](https://ncss-tech.github.io/soil-range-in-characteristics/why-percentiles.html) 

### Concerns

* Many folks aren't familiar with percentiles: establishing a definition for low,rv,high based on percentiles will require some education.

* There is concern about how a new standard will cast doubt on previously established data. How do we inform the user of
different approaches to data population based on vintage of guidance?

* There is concern that dictating Low, RV, High definitions and putting an emphasis on computing values takes away from our ability to interject our "expert knowledge“. The use of the word “approximate” is meant to accommodate the incorporation of  the field knowledge of soil properties and map unit concepts in the determination of exact values for Data Mapunit population in NASIS.

* There is no consensus on the specific percentiles to pin our low and high concepts to: some argue for 5th/95th, others for 10th/90th, and some others for floating percentiles for different soil properties.

* Computed Low-RV-High values ultimately depend on consistent and meaningful correlation of data.

* Can a computed RV supplant a modal pedon value? Consider Berman Hudson's (Hudson, 1990) proposition that mean values are excellent 
predictors of soil behavior and that we need not be overly concerned with modal values of individual taxa found in a map unit.

# Resources

 * [Harrell-Davis quantile estimator](https://garstats.wordpress.com/2016/06/09/the-harrell-davis-quantile-estimator/) -- [link to original article](https://www.jstor.org/stable/2335999?seq=1#page_scan_tab_contents)
 
 * Comparison of groups via [shift function](https://garstats.wordpress.com/2016/07/12/shift-function/), [illustrated version](https://garstats.wordpress.com/2017/02/04/shift-function-illustration/)
 

# References

See [reference folder of this GitHub page](https://github.com/ncss-tech/soil-range-in-characteristics/tree/master/references) to access most of these papers

https://casoilresource.lawr.ucdavis.edu/wiki/Low-rv-high

Hudson, B.D. 1980. Ranges in characteristics-how valid are they? Soil Survey Horizons. 21:7-11.

Hudson, B.D. 1990. Concepts of soil mapping and interpretation. Soil Survey Horizons. 31:36-72.

Hyndman, R. J. and Fan, Y. 1996. Sample Quantiles in Statistical Packages. The American Statistician. 50: 361-365.

Indorante, S.J. 2007. Foundational Soil Survey Data-A Case for Linking Basic Soil Data and Interpretations to the Official Series Description. Soil Survey Horizons. 48:43-45.

Jansen, I. and Arnold, R. 1976. Defining Ranges of Soil Characteristics, in "Spatial Variabilities of Soils and Landforms". SSSA Spec. Publ. 28. Soil Science Society of America, pp. 89-92.

Livingston, R. L. 2006. "Truthiness" and the National Soil Information System: How Are They Related? Soil Survey Horizons. 47:43-46.

Scovlin, J. 2011. Digitnal Soil Mapping: Quantifying the Soil-Landscape Paradigm. NCSS Newsletter Issue 55.

Wilding, L., Scafer, G., Jones, R. 1964. Morley and Blount soils: A statistical summary of certain physical and chemical properties of some selected profiles from Ohio. Soil Sci. Soc. Proc. 28:674-679.

Young, F., Maatta, J., Hammer, R. 1991. Confidence Intervals for Soil Properties within Map Units in "Spatial Variabilities of Soils and Landforms". SSSA Spec. Publ. 28. Soil Science Society of America, pp. 213-230.

