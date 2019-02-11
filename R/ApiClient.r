dkafljd;skjf;klasdlflks
1092832081092 
# OpenAPI Petstore
#
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://openapi-generator.tech


#' ApiClient Class
#'
#' Generic API client for OpenAPI client library builds.
#' OpenAPI generic API client. This client handles the client-
#' server communication, and is invariant across implementations. Specifics of
#' the methods and models for each application are generated from the OpenAPI Generator
#' templates.
#'
#' NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
#' Ref: https://openapi-generator.tech
#' Do not edit the class manually.
#'
#' @export
ApiClient  <- R6::R6Class(
  'ApiClient',
  public = list(
    # base path of all requests
    basePath = "http://petstore.swagger.io/v2",
    # configuration object
    configuration = NULL,
    # user agent in the HTTP request
    userAgent = NULL,
    # default headers in the HTTP request
    defaultHeaders = NULL,
    initialize = function(basePath, configuration, defaultHeaders){
      if (!missing(basePath)) {
        self$basePath <- basePath
      }

      if (!missing(configuration)) {
        self$configuration <- configuration
      }

      if (!missing(defaultHeaders)) {
        self$defaultHeaders <- defaultHeaders
      }

      self$`userAgent` <- 'OpenAPI-Generator/0.0.1/r'
    },
    callApi = function(url, method, queryParams, headerParams, body, ...){
      headers <- httr::add_headers(c(headerParams, self$defaultHeaders))

      if (method == "GET") {
        httr::GET(url, queryParams, headers, ...)
      } else if (method == "POST") {
        httr::POST(url, queryParams, headers, body = body, content_type("application/json"), ...)
      } else if (method == "PUT") {
        httr::PUT(url, queryParams, headers, body = body, content_type("application/json"), ...)
      } else if (method == "PATCH") {
        httr::PATCH(url, queryParams, headers, body = body, content_type("application/json"), ...)
      } else if (method == "HEAD") {
        httr::HEAD(url, queryParams, headers, ...)
      } else if (method == "DELETE") {
        httr::DELETE(url, queryParams, headers, ...)
      } else {
        stop("http method must be `GET`, `HEAD`, `OPTIONS`, `POST`, `PATCH`, `PUT` or `DELETE`.")
      }
    }
  )
)
