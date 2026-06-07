#' tools_ozone_report_assign_moderator
#' Assign a report to a user. Defaults to the caller. Admins may assign to any moderator.
#' @noRd
tools_ozone_report_assign_moderator <- function(
  reportId,
  queueId = NULL,
  did = NULL,
  isPermanent = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.assignModerator",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_report_create_activity
#' Register an activity on a report. For state-change activity types, validates the transition and updates report.status atomically.
#' @noRd
tools_ozone_report_create_activity <- function(
  reportId,
  activity,
  internalNote = NULL,
  publicNote = NULL,
  isAutomated = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.createActivity",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_report_get_assignments
#' Get assignments for reports.
#' @noRd
tools_ozone_report_get_assignments <- function(
  onlyActive = NULL,
  reportIds = NULL,
  dids = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.getAssignments",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_report_get_historical_stats
#' Get historical daily report statistics. Returns a paginated list of daily stat snapshots, newest first. Filter by queue, moderator, or report type.
#' @noRd
tools_ozone_report_get_historical_stats <- function(
  queueId = NULL,
  moderatorDid = NULL,
  reportTypes = NULL,
  startDate = NULL,
  endDate = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.getHistoricalStats",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_report_get_latest_report
#' Get the most recent report.
#' @noRd
tools_ozone_report_get_latest_report <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.getLatestReport",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_report_get_live_stats
#' Get live report statistics from the past 24 hours. Filter by queue, moderator, or report type. Omit all parameters for aggregate stats.
#' @noRd
tools_ozone_report_get_live_stats <- function(
  queueId = NULL,
  moderatorDid = NULL,
  reportTypes = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.getLiveStats",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_report_get_report
#' Get details about a single moderation report by ID.
#' @noRd
tools_ozone_report_get_report <- function(
  id,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.getReport",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_report_list_activities
#' List all activities for a report, sorted most-recent-first.
#' @noRd
tools_ozone_report_list_activities <- function(
  reportId,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.listActivities",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_report_query_reports
#' View moderation reports. Reports are individual instances of content being reported, as opposed to subject statuses which aggregate reports at the subject level.
#' @noRd
tools_ozone_report_query_reports <- function(
  status,
  queueId = NULL,
  reportTypes = NULL,
  subject = NULL,
  did = NULL,
  subjectType = NULL,
  collections = NULL,
  reportedAfter = NULL,
  reportedBefore = NULL,
  isMuted = NULL,
  assignedTo = NULL,
  sortField = NULL,
  sortDirection = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.queryReports",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' tools_ozone_report_reassign_queue
#' Manually reassign a report to a different queue (or unassign it). Records a queueActivity entry on the report.
#' @noRd
tools_ozone_report_reassign_queue <- function(
  reportId,
  queueId,
  comment = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.reassignQueue",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_report_refresh_stats
#' Recompute report statistics for a date range. Useful for backfilling after failures or data corrections.
#' @noRd
tools_ozone_report_refresh_stats <- function(
  startDate,
  endDate,
  queueIds = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.refreshStats",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' tools_ozone_report_unassign_moderator
#' Remove report assignment.
#' @noRd
tools_ozone_report_unassign_moderator <- function(
  reportId,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/tools.ozone.report.unassignModerator",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}
