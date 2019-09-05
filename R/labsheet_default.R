#' Create default labsheet document
#'
#' This function wraps \code{rmarkdown::html_document} to configure compilation to embed the default labsheet CSS and JavaScript files in the resulting HTML.
#'
#' @details Call this function as the \code{output_format} argument for the \code{\link[rmarkdown]{render}} function when compiling HTML documents from RMarkdown source.
#'
#' @param ... Additional function arguments to pass to \code{\link[rmarkdown]{html_document}}.
#' @seealso \code{\link[rmarkdown]{render}}, \code{\link[rmarkdown]{html_document}}
#' @examples
#' \dontrun{
#' rmarkdown::render("my_exercise.Rmd", labsheet::labsheet_default())
#' }
#' @export
labsheet_default <- function(...) {
  css <- system.file("reports/default/labsheet.css", package = "labsheet")
  js <- system.file("reports/default/webex.js", package = "labsheet")

  knitr::knit_hooks$set(labsheet.hide = function(before, options, envir) {
    if (before) {
      if (is.character(options$labsheet.hide)) {
        hide(options$labsheet.hide)
      } else {
        hide()
      }
    } else {
      unhide()
    }
  })

  rmarkdown::html_document(css = css,
                           includes = rmarkdown::includes(after_body = js),
                           smart = FALSE,
                           ...)
}
