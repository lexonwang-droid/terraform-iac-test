policy "require-sg-review" {
    source            = "./policies/require-sg-review.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "require-vpc-cidr" {
    source            = "./policies/require-vpc-cidr.sentinel"
    enforcement_level = "hard-mandatory"
}
    source            = "./policies/require-sg-review.sentinel"
    enforcement_level = "hard-mandatory"
}
