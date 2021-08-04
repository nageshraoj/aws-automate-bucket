resource "aws_s3_bucket" "demobucket" {
  bucket        = var.bucket_name
  acl           = "public-read"
  force_destroy = true
  versioning {
    enabled = true
  }
  website {
    index_document = "index.html"
  }
  provisioner "local-exec" {
    command = "aws s3 cp myapp/ s3://${var.bucket_name} --recursive"
  }

   policy = jsonencode({
    "Id" : "Policy1626177586878",
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "Stmt1626177585820",
        "Action" : [
          "s3:GetObject"
        ],
        "Effect" : "Allow",
        "Resource" : "arn:aws:s3:::${var.bucket_name}/*",
        "Principal" : "*"
      }
    ]
  })

}