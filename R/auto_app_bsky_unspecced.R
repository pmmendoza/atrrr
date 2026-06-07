#' app_bsky_unspecced_get_age_assurance_state
#' Returns the current state of the age assurance process for an account. This is used to check if the user has completed age assurance or if further action is required.
#' @noRd
app_bsky_unspecced_get_age_assurance_state <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getAgeAssuranceState",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_config
#' Get miscellaneous runtime configuration.
#' @noRd
app_bsky_unspecced_get_config <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getConfig",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_onboarding_suggested_starter_packs
#' Get a list of suggested starterpacks for onboarding
#' @noRd
app_bsky_unspecced_get_onboarding_suggested_starter_packs <- function(
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getOnboardingSuggestedStarterPacks",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_onboarding_suggested_starter_packs_skeleton
#' Get a skeleton of suggested starterpacks for onboarding. Intended to be called and hydrated by app.bsky.unspecced.getOnboardingSuggestedStarterPacks
#' @noRd
app_bsky_unspecced_get_onboarding_suggested_starter_packs_skeleton <- function(
  viewer = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getOnboardingSuggestedStarterPacksSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_onboarding_suggested_users_skeleton
#' Get a skeleton of suggested users for onboarding. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedOnboardingUsers
#' @noRd
app_bsky_unspecced_get_onboarding_suggested_users_skeleton <- function(
  viewer = NULL,
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getOnboardingSuggestedUsersSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_popular_feed_generators
#' An unspecced view of globally popular feed generators.
#' @noRd
app_bsky_unspecced_get_popular_feed_generators <- function(
  limit = NULL,
  cursor = NULL,
  query = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getPopularFeedGenerators",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_post_thread_other_v2
#' (NOTE: this endpoint is under development and WILL change without notice. Don't use it until it is moved out of `unspecced` or your application WILL break) Get additional posts under a thread e.g. replies hidden by threadgate. Based on an anchor post at any depth of the tree, returns top-level replies below that anchor. It does not include ancestors nor the anchor itself. This should be called after exhausting `app.bsky.unspecced.getPostThreadV2`. Does not require auth, but additional metadata and filtering will be applied for authed requests.
#' @noRd
app_bsky_unspecced_get_post_thread_other_v2 <- function(
  anchor,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getPostThreadOtherV2",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_post_thread_v2
#' (NOTE: this endpoint is under development and WILL change without notice. Don't use it until it is moved out of `unspecced` or your application WILL break) Get posts in a thread. It is based in an anchor post at any depth of the tree, and returns posts above it (recursively resolving the parent, without further branching to their replies) and below it (recursive replies, with branching to their replies). Does not require auth, but additional metadata and filtering will be applied for authed requests.
#' @noRd
app_bsky_unspecced_get_post_thread_v2 <- function(
  anchor,
  above = NULL,
  below = NULL,
  branchingFactor = NULL,
  sort = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getPostThreadV2",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_feeds
#' Get a list of suggested feeds
#' @noRd
app_bsky_unspecced_get_suggested_feeds <- function(
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedFeeds",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_feeds_skeleton
#' Get a skeleton of suggested feeds. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedFeeds
#' @noRd
app_bsky_unspecced_get_suggested_feeds_skeleton <- function(
  viewer = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedFeedsSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_onboarding_users
#' Get a list of suggested users for onboarding
#' @noRd
app_bsky_unspecced_get_suggested_onboarding_users <- function(
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedOnboardingUsers",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_starter_packs
#' Get a list of suggested starterpacks
#' @noRd
app_bsky_unspecced_get_suggested_starter_packs <- function(
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedStarterPacks",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_starter_packs_skeleton
#' Get a skeleton of suggested starterpacks. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedStarterpacks
#' @noRd
app_bsky_unspecced_get_suggested_starter_packs_skeleton <- function(
  viewer = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedStarterPacksSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users
#' Get a list of suggested users
#' @noRd
app_bsky_unspecced_get_suggested_users <- function(
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsers",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users_for_discover
#' Get a list of suggested users for the Discover page
#' @noRd
app_bsky_unspecced_get_suggested_users_for_discover <- function(
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsersForDiscover",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users_for_discover_skeleton
#' Get a skeleton of suggested users for the Discover page. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedUsersForDiscover
#' @noRd
app_bsky_unspecced_get_suggested_users_for_discover_skeleton <- function(
  viewer = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsersForDiscoverSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users_for_explore
#' Get a list of suggested users for the Explore page
#' @noRd
app_bsky_unspecced_get_suggested_users_for_explore <- function(
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsersForExplore",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users_for_explore_skeleton
#' Get a skeleton of suggested users for the Explore page. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedUsersForExplore
#' @noRd
app_bsky_unspecced_get_suggested_users_for_explore_skeleton <- function(
  viewer = NULL,
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsersForExploreSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users_for_see_more
#' Get a list of suggested users for the See More page
#' @noRd
app_bsky_unspecced_get_suggested_users_for_see_more <- function(
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsersForSeeMore",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users_for_see_more_skeleton
#' Get a skeleton of suggested users for the See More page. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedUsersForSeeMore
#' @noRd
app_bsky_unspecced_get_suggested_users_for_see_more_skeleton <- function(
  viewer = NULL,
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsersForSeeMoreSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggested_users_skeleton
#' Get a skeleton of suggested users. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedUsers
#' @noRd
app_bsky_unspecced_get_suggested_users_skeleton <- function(
  viewer = NULL,
  category = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestedUsersSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_suggestions_skeleton
#' Get a skeleton of suggested actors. Intended to be called and then hydrated through app.bsky.actor.getSuggestions
#' @noRd
app_bsky_unspecced_get_suggestions_skeleton <- function(
  viewer = NULL,
  limit = NULL,
  cursor = NULL,
  relativeToDid = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getSuggestionsSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_tagged_suggestions
#' Get a list of suggestions (feeds and users) tagged with categories
#' @noRd
app_bsky_unspecced_get_tagged_suggestions <- function(
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getTaggedSuggestions",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_trending_topics
#' Get a list of trending topics
#' @noRd
app_bsky_unspecced_get_trending_topics <- function(
  viewer = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getTrendingTopics",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_trends
#' Get the current trends on the network
#' @noRd
app_bsky_unspecced_get_trends <- function(
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getTrends",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_get_trends_skeleton
#' Get the skeleton of trends on the network. Intended to be called and then hydrated through app.bsky.unspecced.getTrends
#' @noRd
app_bsky_unspecced_get_trends_skeleton <- function(
  viewer = NULL,
  limit = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.getTrendsSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_init_age_assurance
#' Initiate age assurance for an account. This is a one-time action that will start the process of verifying the user's age.
#' @noRd
app_bsky_unspecced_init_age_assurance <- function(
  email,
  language,
  countryCode,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.initAgeAssurance",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "POST"
  )
}


#' app_bsky_unspecced_search_actors_skeleton
#' Backend Actors (profile) search, returns only skeleton.
#' @noRd
app_bsky_unspecced_search_actors_skeleton <- function(
  q,
  viewer = NULL,
  typeahead = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.searchActorsSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_search_posts_skeleton
#' Backend Posts search, returns only skeleton
#' @noRd
app_bsky_unspecced_search_posts_skeleton <- function(
  q,
  sort = NULL,
  since = NULL,
  until = NULL,
  mentions = NULL,
  author = NULL,
  lang = NULL,
  domain = NULL,
  url = NULL,
  tag = NULL,
  viewer = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.searchPostsSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}


#' app_bsky_unspecced_search_starter_packs_skeleton
#' Backend Starter Pack search, returns only skeleton.
#' @noRd
app_bsky_unspecced_search_starter_packs_skeleton <- function(
  q,
  viewer = NULL,
  limit = NULL,
  cursor = NULL,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.unspecced.searchStarterPacksSkeleton",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}
