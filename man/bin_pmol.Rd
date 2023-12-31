% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin_pmol.R
\name{bin_pmol}
\alias{bin_pmol}
\title{Binned estimation of picomoles of DNA present in cfMeDIP assays}
\usage{
bin_pmol(x)
}
\arguments{
\item{x}{results from predict_pmol (a data.frame or GRanges)}
}
\value{
\if{html}{\out{<div class="sourceCode">}}\preformatted{ the same object, but with a column `adjusted_pred_con`
}\if{html}{\out{</div>}}
}
\description{
Given the results of model_glm_pmol and predict_pmol, adjust the predictions
to reflect picomoles of captured DNA overlapping a given bin in the genome.
}
\examples{
data(spike, package="spiky")
data(spike_res, package="spiky")
data(genomic_res,package="spiky")
fit <- model_glm_pmol(covg_to_df(spike_res, spike=spike),spike=spike)
pred <- predict_pmol(fit, genomic_res, ret="df")
bin_pmol(pred)

}
\seealso{
model_glm_pmol

predict_pmol
}
