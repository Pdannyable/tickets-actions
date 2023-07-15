resource "time_sleep" "wait_for_instance" {
  create_duration = "180s"

  depends_on = [aws_instance.my_elk_instance]
}
resource "aws_instance" "myown" {
  ami = "1a2b3c4d"
  region = "us-east-1"
}

resource "time_sleep" "wait_for_s3_bucket" {
  create_duration = "20s"
}

resource "time_sleep" "wait_for_s3_role" {
  create_duration = "50s"

  depends_on = [aws_instance.myown]
}