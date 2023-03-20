variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "names" {
        type = map(object({
                name = string
                record_name = string
        }))
}
