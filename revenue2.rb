    price = ARGV[0].to_i
    normal_users = ARGV[1].to_i 
    premium_users = ARGV[2].to_i 
    free_users = ARGV[3].to_i 
    costs = ARGV[4].to_i 

    TAX_RATE = 0.35

    gross_revenue = (price * normal_users) + (2 * price * premium_users) - costs

    revenue =   if gross_revenue.positive?
                    gross_revenue * (1- TAX_RATE)
                else
                    gross_revenue
                end

    puts "la utilidad es #{revenue}"