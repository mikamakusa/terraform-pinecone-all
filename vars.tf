variable "collection" {
  type = list(object({
    id        = number
    source_id = any
    name      = string
  }))
  default = []
}

variable "index" {
  type = list(object({
    id        = number
    name      = string
    dimension = number
    spec = list(object({
      serverless = optional(list(object({
        region = string
        cloud  = string
      })))
      pod = optional(list(object({
        environment       = string
        pod_type          = string
        replicas          = optional(number)
        shards            = optional(number)
        pods              = optional(string)
        source_collection = optional(string)
        indexed           = optional(string)
      })))
    }))
  }))
  default = []
}