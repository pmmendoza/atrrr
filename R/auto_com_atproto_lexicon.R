#' com_atproto_lexicon_resolve_lexicon
#' Resolves an atproto lexicon (NSID) to a schema.
#' @noRd
com_atproto_lexicon_resolve_lexicon <- function(
  nsid,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/com.atproto.lexicon.resolveLexicon",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}
