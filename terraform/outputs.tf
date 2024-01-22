resource "local_file" "inventory_file" {
  content = templatefile("../ansible/inventory.template",
    {
      ec2_public_ip = [module.ec2_instance.public_ip]
    }
  )
  filename = "../ansible/inventory"
}