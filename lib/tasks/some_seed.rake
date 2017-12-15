namespace :some_seed do
    
     task :plan_create_task => :environment do
        
    #Railsモデル    
        Plan.create(
            id: 1,
            stripe_plan_id: 'basic-plan',
            name: 'Basic Plan',
            amount: 5000,
            currency: "jpy",
            interval: 'month',
            statement_descriptor: 'Basic Plan',
        )
        
        Plan.find_each do |plan|
          Stripe::Plan.create(
            id:       plan.stripe_plan_id,
            amount:   plan.amount,
            currency: plan.currency,
            interval: plan.interval,
            name:     plan.name,
            statement_descriptor: plan.statement_descriptor,
          )
      end  
  end
end  