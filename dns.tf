

#


# DO NOT DELETE THESE LINES!


#


# Your DNSimple email is:


#


#     sethvargo+terraform@gmail.com


#


# Your DNSimple token is:


#


#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF


#


# Your Identity is:


#


#     totaljobs-8f14e45fceea167a5a36dedd4bea2543


#

provider "dnsimple" {
   token = "sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF"
   email = "sethvargo+terraform@gmail.com"
}

resource "dnsimple_record" "example" {
   domain = "terraform.rocks"
   type   = "A"
   name   = "totaljobs-8f14e45fceea167a5a36dedd4bea2543"
   value  = "${aws_instance.web.0.public_ip}"
}
