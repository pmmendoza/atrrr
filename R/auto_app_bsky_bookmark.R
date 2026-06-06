#' app_bsky_bookmark_create_bookmark
#' Creates a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.
#' @noRd
app_bsky_bookmark_create_bookmark <- function(
  uri,
  cid,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.bookmark.createBookmark",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_bookmark_delete_bookmark
#' Deletes a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.
#' @noRd
app_bsky_bookmark_delete_bookmark <- function(
  uri,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.bookmark.deleteBookmark",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_bookmark_get_bookmarks
#' Gets views of records bookmarked by the authenticated user. Requires authentication.
#' @noRd
app_bsky_bookmark_get_bookmarks <- function(
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.bookmark.getBookmarks",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}
