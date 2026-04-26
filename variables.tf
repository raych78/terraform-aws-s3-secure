variable "bucket_name" {
    description = "bucket S3"
    type = string

    validation {
        condition = can(regex("^[a-z0-9-]{3,63}$", var.bucket_name))
        error_message = "Bucket names must be between 3 and 63 characters long with only of lowercase letters, numbers, periods (.), and hyphens (-)"
    }

}