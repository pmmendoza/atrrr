#' app_bsky_draft_create_draft
#' Inserts a draft using private storage (stash). An upper limit of drafts might be enforced. Requires authentication.
#' @noRd
app_bsky_draft_create_draft <- function(
  draft,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.draft.createDraft",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_draft_delete_draft
#' Deletes a draft by ID. Requires authentication.
#' @noRd
app_bsky_draft_delete_draft <- function(
  id,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.draft.deleteDraft",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_draft_get_drafts
#' Gets views of user drafts. Requires authentication.
#' @noRd
app_bsky_draft_get_drafts <- function(
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.draft.getDrafts",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_draft_update_draft
#' Updates a draft using private storage (stash). If the draft ID points to a non-existing ID, the update will be silently ignored. This is done because updates don't enforce draft limit, so it accepts all writes, but will ignore invalid ones. Requires authentication.
#' @noRd
app_bsky_draft_update_draft <- function(
  draft,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.draft.updateDraft",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}
