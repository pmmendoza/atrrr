#' chat_bsky_moderation_get_actor_metadata
#'
#' @noRd
chat_bsky_moderation_get_actor_metadata <- function(
  actor,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.moderation.getActorMetadata",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_moderation_get_convo
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Gets an existing conversation by its ID, for moderation purposes. Does not require the requester to be a member of the conversation.
#' @noRd
chat_bsky_moderation_get_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.moderation.getConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_moderation_get_convo_members
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Returns a paginated list of members from a conversation, for moderation purposes. Does not require the requester to be a member of the conversation.
#' @noRd
chat_bsky_moderation_get_convo_members <- function(
  convoId,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.moderation.getConvoMembers",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_moderation_get_convos
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Gets existing conversations by their IDs, for moderation purposes. Does not require the requester to be a member of the conversations. Unknown IDs are silently omitted from the response.
#' @noRd
chat_bsky_moderation_get_convos <- function(
  convoIds,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.moderation.getConvos",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_moderation_get_message_context
#'
#' @noRd
chat_bsky_moderation_get_message_context <- function(
  messageId,
  convoId = NULL,
  before = NULL,
  after = NULL,
  maxInterleavedSystemMessages = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.moderation.getMessageContext",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_moderation_update_actor_access
#'
#' @noRd
chat_bsky_moderation_update_actor_access <- function(
  actor,
  allowAccess,
  ref = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.moderation.updateActorAccess",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}
