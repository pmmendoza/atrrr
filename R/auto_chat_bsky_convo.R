#' chat_bsky_convo_accept_convo
#' Marks a conversation as accepted, so it is shown in the list of accepted convos instead on the request convos.
#' @noRd
chat_bsky_convo_accept_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.acceptConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_add_reaction
#' Adds an emoji reaction to a message. Requires authentication. It is idempotent, so multiple calls from the same user with the same emoji result in a single reaction.
#' @noRd
chat_bsky_convo_add_reaction <- function(
  convoId,
  messageId,
  value,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.addReaction",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_delete_message_for_self
#' Marks a message as deleted for the viewer, so they won't see that message in future enumerations.
#' @noRd
chat_bsky_convo_delete_message_for_self <- function(
  convoId,
  messageId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.deleteMessageForSelf",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_get_convo
#' Gets an existing conversation by its ID.
#' @noRd
chat_bsky_convo_get_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.getConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_get_convo_availability
#' Check whether the requester and the other members can start a 1-1 chat. Only applicable to direct (non-group) conversations. If an existing convo is found for these members, it is returned. Does not create a new convo if it doesn't exist.
#' @noRd
chat_bsky_convo_get_convo_availability <- function(
  members,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.getConvoAvailability",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_get_convo_for_members
#' Get or create a 1-1 conversation for the given members. Always returns the same direct (non-group) conversation. To create a group conversation, use createGroup.
#' @noRd
chat_bsky_convo_get_convo_for_members <- function(
  members,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.getConvoForMembers",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_get_convo_members
#' Returns a paginated list of members from a conversation.
#' @noRd
chat_bsky_convo_get_convo_members <- function(
  convoId,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.getConvoMembers",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_get_log
#'
#' @noRd
chat_bsky_convo_get_log <- function(
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.getLog",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_get_messages
#' Returns a page of messages from a conversation.
#' @noRd
chat_bsky_convo_get_messages <- function(
  convoId,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.getMessages",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_leave_convo
#' Leaves a conversation (direct or group). For group, this effectively removes membership. For direct, membership is never removed, only changed to remove from enumerations by the user who left.
#' @noRd
chat_bsky_convo_leave_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.leaveConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_list_convo_requests
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Returns a page of incoming conversation requests for the user. Direct convo requests are returned as convoView; group join requests made by the user are returned as joinRequestConvoView.
#' @noRd
chat_bsky_convo_list_convo_requests <- function(
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.listConvoRequests",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_list_convos
#' Returns a page of conversations (direct or group) for the user.
#' @noRd
chat_bsky_convo_list_convos <- function(
  limit = NULL,
  cursor = NULL,
  readState = NULL,
  status = NULL,
  kind = NULL,
  lockStatus = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.listConvos",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_convo_lock_convo
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Locks a group convo so no more content (messages, reactions) can be added to it.
#' @noRd
chat_bsky_convo_lock_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.lockConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_mute_convo
#' Mutes a conversation, preventing notifications related to it.
#' @noRd
chat_bsky_convo_mute_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.muteConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_remove_reaction
#' Removes an emoji reaction from a message. Requires authentication. It is idempotent, so multiple calls from the same user with the same emoji result in that reaction not being present, even if it already wasn't.
#' @noRd
chat_bsky_convo_remove_reaction <- function(
  convoId,
  messageId,
  value,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.removeReaction",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_send_message
#' Sends a message to a conversation.
#' @noRd
chat_bsky_convo_send_message <- function(
  convoId,
  message,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.sendMessage",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_send_message_batch
#' Sends a batch of messages to a conversation.
#' @noRd
chat_bsky_convo_send_message_batch <- function(
  items,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.sendMessageBatch",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_unlock_convo
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Unlocks a group convo so it is able to receive new content.
#' @noRd
chat_bsky_convo_unlock_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.unlockConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_unmute_convo
#' Unmutes a conversation, allowing notifications related to it.
#' @noRd
chat_bsky_convo_unmute_convo <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.unmuteConvo",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_update_all_read
#' Sets conversations from a user as read to the latest message, with filters.
#' @noRd
chat_bsky_convo_update_all_read <- function(
  status = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.updateAllRead",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_convo_update_read
#' Updates the read state of a conversation from, optionally specifying the last read message.
#' @noRd
chat_bsky_convo_update_read <- function(
  convoId,
  messageId = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.convo.updateRead",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}
