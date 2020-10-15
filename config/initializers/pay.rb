Pay.setup do |config|

    config.chargeable_class = "Pay::Charge"
    config.chargeable_table = "pay_charges"

    config.business_name = ENV["PHC_Business_Name"]
    config.business_address = ENV["PHC_Business_Address"]
    config.application_name = ENV["PHC_App_Name"]
    config.support_email = ENV["PHC_EMAIL"]

    config.send_emails = true

    config.automount_routes = true
    config.routes_path = "/pay"

end