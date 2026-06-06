#' app_bsky_ageassurance_begin
#' Initiate Age Assurance for an account.
#' @noRd
app_bsky_ageassurance_begin <- function(
  email,
  language,
  countryCode,
  regionCode = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.ageassurance.begin",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_ageassurance_get_config
#' Returns Age Assurance configuration for use on the client.
#' @noRd
app_bsky_ageassurance_get_config <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.ageassurance.getConfig",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_ageassurance_get_state
#' Returns server-computed Age Assurance state, if available, and any additional metadata needed to compute Age Assurance state client-side.
#' @noRd
app_bsky_ageassurance_get_state <- function(
  countryCode,
  regionCode = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.ageassurance.getState",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}
