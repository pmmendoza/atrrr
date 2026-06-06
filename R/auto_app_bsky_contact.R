#' app_bsky_contact_dismiss_match
#' Removes a match that was found via contact import. It shouldn't appear again if the same contact is re-imported. Requires authentication.
#' @noRd
app_bsky_contact_dismiss_match <- function(
  subject,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.dismissMatch",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_contact_get_matches
#' Returns the matched contacts (contacts that were mutually imported). Excludes dismissed matches. Requires authentication.
#' @noRd
app_bsky_contact_get_matches <- function(
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.getMatches",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_contact_get_sync_status
#' Gets the user's current contact import status. Requires authentication.
#' @noRd
app_bsky_contact_get_sync_status <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.getSyncStatus",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_contact_import_contacts
#' Import contacts for securely matching with other users. This follows the protocol explained in https://docs.bsky.app/blog/contact-import-rfc. Requires authentication.
#' @noRd
app_bsky_contact_import_contacts <- function(
  token,
  contacts,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.importContacts",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_contact_remove_data
#' Removes all stored hashes used for contact matching, existing matches, and sync status. Requires authentication.
#' @noRd
app_bsky_contact_remove_data <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.removeData",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_contact_send_notification
#' System endpoint to send notifications related to contact imports. Requires role authentication.
#' @noRd
app_bsky_contact_send_notification <- function(
  from,
  to,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.sendNotification",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_contact_start_phone_verification
#' Starts a phone verification flow. The phone passed will receive a code via SMS that should be passed to `app.bsky.contact.verifyPhone`. Requires authentication.
#' @noRd
app_bsky_contact_start_phone_verification <- function(
  phone,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.startPhoneVerification",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_contact_verify_phone
#' Verifies control over a phone number with a code received via SMS and starts a contact import session. Requires authentication.
#' @noRd
app_bsky_contact_verify_phone <- function(
  phone,
  code,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.contact.verifyPhone",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}
