% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_IncludeResults.R
\name{IncludeResults}
\alias{IncludeResults}
\title{Include results class}
\description{
Include results class

Include results class
}
\details{
Definition for the \code{IncludeResults} class.
}
\seealso{
\code{\link[=new_include_results]{new_include_results()}}.
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{id}}{\code{character} value.}

\item{\code{include}}{\link{Include} object.}

\item{\code{status}}{\code{logical} value.}

\item{\code{held}}{\code{numeric} value.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-IncludeResults-new}{\code{IncludeResults$new()}}
\item \href{#method-IncludeResults-print}{\code{IncludeResults$print()}}
\item \href{#method-IncludeResults-repr}{\code{IncludeResults$repr()}}
\item \href{#method-IncludeResults-get_results_data}{\code{IncludeResults$get_results_data()}}
\item \href{#method-IncludeResults-get_widget_data}{\code{IncludeResults$get_widget_data()}}
\item \href{#method-IncludeResults-clone}{\code{IncludeResults$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IncludeResults-new"></a>}}
\if{latex}{\out{\hypertarget{method-IncludeResults-new}{}}}
\subsection{Method \code{new()}}{
Create a new \code{IncludeResults} object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IncludeResults$new(id, include, held)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{id}}{\code{character} value.}

\item{\code{include}}{\link{Include} object.}

\item{\code{held}}{\code{numeric} value.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new \code{IncludeResults} object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IncludeResults-print"></a>}}
\if{latex}{\out{\hypertarget{method-IncludeResults-print}{}}}
\subsection{Method \code{print()}}{
Print the object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IncludeResults$print(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{not used.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IncludeResults-repr"></a>}}
\if{latex}{\out{\hypertarget{method-IncludeResults-repr}{}}}
\subsection{Method \code{repr()}}{
Generate a \code{character} summarizing the representation of the object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IncludeResults$repr(start = "[", end = "]")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{start}}{\code{character} symbol used to start the setting list.
Defaults to \code{"["}.}

\item{\code{end}}{\code{character} symbol used to start the setting list.
Defaults to \code{"]"}.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{character} value.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IncludeResults-get_results_data"></a>}}
\if{latex}{\out{\hypertarget{method-IncludeResults-get_results_data}{}}}
\subsection{Method \code{get_results_data()}}{
Get results.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IncludeResults$get_results_data()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
\code{\link[tibble:tibble]{tibble::tibble()}} object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IncludeResults-get_widget_data"></a>}}
\if{latex}{\out{\hypertarget{method-IncludeResults-get_widget_data}{}}}
\subsection{Method \code{get_widget_data()}}{
Get data for displaying the object in a \code{\link[=solutionResults]{solutionResults()}} widget.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IncludeResults$get_widget_data()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
\code{list} with widget data.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IncludeResults-clone"></a>}}
\if{latex}{\out{\hypertarget{method-IncludeResults-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IncludeResults$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
