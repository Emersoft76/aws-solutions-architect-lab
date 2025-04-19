resource "aws_iam_policy" "s3_read_only" {
  name = "S3ReadOnlyPolicy"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action   = ["s3:GetObject", "s3:ListBucket"],
      Effect   = "Allow",
      Resource = [
        "arn:aws:s3:::lab-dados/*",
        "arn:aws:s3:::lab-dados"
      ]
    }]
  })
}

resource "aws_iam_group" "readers" {
  name = "s3-readers"
}

resource "aws_iam_group_policy_attachment" "attach_read" {
  group      = aws_iam_group.readers.name
  policy_arn = aws_iam_policy.s3_read_only.arn
}

resource "aws_iam_user" "lucas" {
  name = "lucas"
}

resource "aws_iam_user_group_membership" "group_attach" {
  user = aws_iam_user.lucas.name
  groups = [aws_iam_group.readers.name]
}  
