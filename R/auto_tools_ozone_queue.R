#' tools_ozone_queue_assign_moderator
#' Assign a user to a queue.
#' @noRd
tools_ozone_queue_assign_moderator <- function(
  queueId,
  did,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.assignModerator",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_queue_create_queue
#' Create a new moderation queue. Will fail if the queue configuration conflicts with an existing queue.
#' @noRd
tools_ozone_queue_create_queue <- function(
  name,
  subjectTypes,
  reportTypes,
  collection = NULL,
  description = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.createQueue",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_queue_delete_queue
#' Delete a moderation queue. Optionally migrate reports to another queue.
#' @noRd
tools_ozone_queue_delete_queue <- function(
  queueId,
  migrateToQueueId = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.deleteQueue",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_queue_get_assignments
#' Get moderator assignments, optionally filtered by active status, queue, or moderator.
#' @noRd
tools_ozone_queue_get_assignments <- function(
  onlyActive = NULL,
  queueIds = NULL,
  dids = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.getAssignments",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_queue_list_queues
#' List all configured moderation queues with statistics.
#' @noRd
tools_ozone_queue_list_queues <- function(
  enabled = NULL,
  subjectType = NULL,
  collection = NULL,
  reportTypes = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.listQueues",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_queue_route_reports
#' Route reports within an ID range to matching queues based.
#' @noRd
tools_ozone_queue_route_reports <- function(
  startReportId,
  endReportId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.routeReports",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_queue_unassign_moderator
#' Remove a user's assignment from a queue.
#' @noRd
tools_ozone_queue_unassign_moderator <- function(
  queueId,
  did,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.unassignModerator",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_queue_update_queue
#' Update queue properties. Currently only supports updating the name and enabled status to prevent configuration conflicts.
#' @noRd
tools_ozone_queue_update_queue <- function(
  queueId,
  name = NULL,
  enabled = NULL,
  description = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.queue.updateQueue",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}
