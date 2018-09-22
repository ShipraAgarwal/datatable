module Zapier
  class User < Zapier::Base
    def call_operation
      HTTParty.post("https://hooks.zapier.com/hooks/catch/3789151/q7is3b/", body: params)
    end

    def params
      { 
        brand_name: "holla",
        user:{
          name: resource.name,
          email: resource.email,
          msg: "hii",
        },
      }
    end
  end
end