#' chat_bsky_group_add_members
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Adds members to a group. The members are added in 'request' status, so they have to accept it. This creates convo memberships.
#' @noRd
chat_bsky_group_add_members <- function(
  convoId,
  members,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.addMembers",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_approve_join_request
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Approves a request to join a group (via join link) the user owns. Action taken by the group owner.
#' @noRd
chat_bsky_group_approve_join_request <- function(
  convoId,
  member,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.approveJoinRequest",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_create_group
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Creates a group convo, specifying the members to be added to it. Unlike getConvoForMembers, this isn't idempotent. It will create new groups even if the membership is identical to pre-existing groups. Will create 'pending' membership for all members, except the owner who is 'accepted'.
#' @noRd
chat_bsky_group_create_group <- function(
  members,
  name,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.createGroup",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_create_join_link
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Creates a join link for the group convo.
#' @noRd
chat_bsky_group_create_join_link <- function(
  convoId,
  joinRule,
  requireApproval = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.createJoinLink",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_disable_join_link
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Disables the active join link for the group convo.
#' @noRd
chat_bsky_group_disable_join_link <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.disableJoinLink",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_edit_group
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Edits group settings.
#' @noRd
chat_bsky_group_edit_group <- function(
  convoId,
  name,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.editGroup",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_edit_join_link
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Edits the existing join link settings for the group convo.
#' @noRd
chat_bsky_group_edit_join_link <- function(
  convoId,
  requireApproval = NULL,
  joinRule = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.editJoinLink",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_enable_join_link
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Re-enables a previously disabled join link for the group convo.
#' @noRd
chat_bsky_group_enable_join_link <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.enableJoinLink",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_get_join_link_previews
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Get public information about groups from join links. Invalid or disabled codes are silently omitted from results. Use the 'code' property on the views to correlate with the input codes, not array positions.
#' @noRd
chat_bsky_group_get_join_link_previews <- function(
  codes,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.getJoinLinkPreviews",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_group_list_join_requests
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Lists a page of request to join a group (via join link) the user owns. Shows the data from the owner's point of view.
#' @noRd
chat_bsky_group_list_join_requests <- function(
  convoId,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.listJoinRequests",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_group_list_mutual_groups
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Returns a page of group conversations that both the requester and the specified actor are members of.
#' @noRd
chat_bsky_group_list_mutual_groups <- function(
  subject,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.listMutualGroups",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' chat_bsky_group_reject_join_request
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Rejects a request to join a group (via join link) the user owns. Action taken by the group owner.
#' @noRd
chat_bsky_group_reject_join_request <- function(
  convoId,
  member,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.rejectJoinRequest",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_remove_members
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Removes members from a group. This deletes convo memberships, doesn't just set a status.
#' @noRd
chat_bsky_group_remove_members <- function(
  convoId,
  members,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.removeMembers",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_request_join
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Sends a request to join a group (via join link) to the group owner. Action taken by the prospective group member.
#' @noRd
chat_bsky_group_request_join <- function(
  code,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.requestJoin",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_update_join_requests_read
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Marks all join requests as read for the group owner.
#' @noRd
chat_bsky_group_update_join_requests_read <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.updateJoinRequestsRead",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' chat_bsky_group_withdraw_join_request
#' [NOTE: This is under active development and should be considered unstable while this note is here]. Withdraws a pending request to join a group. Action taken by the prospective member who originally requested to join.
#' @noRd
chat_bsky_group_withdraw_join_request <- function(
  convoId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/chat.bsky.group.withdrawJoinRequest",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}
