# OpenAPI Petstore
#
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://openapi-generator.tech


#' Category Class
#'
#' @field id 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Category <- R6::R6Class(
  'Category',
  public = list(
    `id` = NULL,
    `name` = NULL,
    initialize = function(`id`, `name`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      CategoryObject <- list()
      if (!is.null(self$`id`)) {
        CategoryObject[['id']] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CategoryObject[['name']] <-
          self$`name`
      }

      CategoryObject
    },
    fromJSON = function(CategoryJson) {
      CategoryObject <- jsonlite::fromJSON(CategoryJson)
      if (!is.null(CategoryObject$`id`)) {
        self$`id` <- CategoryObject$`id`
      }
      if (!is.null(CategoryObject$`name`)) {
        self$`name` <- CategoryObject$`name`
      }
    },
    toJSONString = function() {
      sprintf(
        '{
           "id":
             %d,
           "name":
             "%s"
        }',
        self$`id`,
        self$`name`
      )
    },
    fromJSONString = function(CategoryJson) {
      CategoryObject <- jsonlite::fromJSON(CategoryJson)
      self$`id` <- CategoryObject$`id`
      self$`name` <- CategoryObject$`name`
      self
    }
  )
)
