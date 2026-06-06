#' app_bsky_embed_get_embed_external_view
#' Resolve one or more AT-URIs into the data needed to render an enhanced external embed. Returns `associatedRefs` (strongRefs to embed into a post's external.associatedRefs), the raw `associatedRecords`, and a hydrated `view`. The response is empty (`{}`) when no records were resolvable, or when validation determined the resolved records don't actually back the requested URL; clients should fall back to their own link-card rendering in that case and skip writing strongRefs to the post.
#' @noRd
app_bsky_embed_get_embed_external_view <- function(
  url,
  uris,
  .token = NULL,
  .return = c("json", "resp")
) {
  make_request(
    name = "bsky.social/xrpc/app.bsky.embed.getEmbedExternalView",
    params = as.list(match.call())[-1] |>
      purrr::imap(
        ~ {
          eval(.x, envir = parent.frame())
        }
      ),
    req_method = "GET"
  )
}
