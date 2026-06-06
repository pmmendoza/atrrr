#' chat_bsky_actor_delete_account
#'
#' @noRd
chat_bsky_actor_delete_account <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.actor.deleteAccount",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_actor_export_account_data
#'
#' @noRd
chat_bsky_actor_export_account_data <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.actor.exportAccountData",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_actor_get_status
#' Get the authenticated viewer's chat status: whether their account is chat-disabled and whether their group-membership additions are restricted to accounts they follow.
#' @noRd
chat_bsky_actor_get_status <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.actor.getStatus",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}
