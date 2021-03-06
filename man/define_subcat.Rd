% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/define_subcat.R
\name{define_subcat}
\alias{define_subcat}
\title{Creates a subcategory object}
\usage{
define_subcat(subcat_name, ...)
}
\arguments{
\item{subcat_name}{a character string containing the name of the subcategory.}

\item{\dots}{a list of objects of class \code{pixel_rule}.}
}
\value{
An object of class \code{pixel_subcat}, which is a list with the
  following elements:
  \itemize{
  \item \code{name} a character string containing the name of the
  subcategory.
  \item \code{rules_list} a list of  \code{pixel_rule} objects.
  }
}
\description{
Creates an object of class \code{pixel_subcat} from a list of objects of
class \code{pixel_rule}.
}
\details{
When the shape of the cluster of pixels belonging to one category is
  not convex, the rules become inconsistent (the lines cross in awkward ways)
  and the classification produced is erroneous. To solve this problem, the
  complete set of rules is divided into several subsets (subcategories) that
  break the original non-convex shape into a set of convex polygons. Note
  that any polygon can be divided in a number of triangles, so this problem
  always has solution. However, in many cases (such as the one presented in
  the pixelclasser vignette) a complete triangulation is not needed.
  
  Internally, \code{classify_pixels()} classifies the points belonging to
  each subcategory and then joins the incidence matrices using the \code{or}
  operator, to create the matrix for the whole category.
}
\examples{
rule01 <- define_rule("R01", "g", "b",
                      list(c(0.35, 0.30), c(0.45, 0.10)), ">=")
rule02 <- define_rule("R02", "g", "b",
                      list(c(0.35, 0.253), c(0.45, 0.253)), ">=")

subcat01 <- define_subcat("Subcat_01", rule01, rule02)

}
\seealso{
\code{\link{define_rule}}, \code{\link{define_cat}}
}
