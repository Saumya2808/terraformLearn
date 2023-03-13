module "test_ec2" {
    source = "../modules/ec2"
}


module "test_s3" {
    source = "../modules/s3"
}

module "test_rds" {
    source = "../modules/rds"
}


# sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"





