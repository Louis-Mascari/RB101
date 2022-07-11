# get 3 values
# =>loan amount
# =>annual percentage rate
# =>loan duration

# calculate the following
# =>monthly interest rate
# =>loan duration in months
# =>monthly payment

# use formula m = p * (j / (1 - (1 + j)**(-n)))
# =>m = monthly payment
# =>p = loan amount
# =>j = monthly interest rate
# =>n = loan duration in months

def prompt(message)
  puts "=> #{message}"
end

loop do # main loop
  prompt("Welcome to the Mortgage Loan Calculator")
  prompt("Please enter the loan amount without special characters:")
  amount = ''
  
  loop do # loan amount
    amount = gets.chomp
    
    if amount.empty? || amount.to_f < 0
      prompt("Must enter a positive number.")
    else
      break
    end  
  end
  
  prompt("Please enter the Annual Percentage Rate (APR)")
  prompt("[e.g. if 5.5% enter 5.5]:")
  
  interest_rate = ''
  loop do # interest rate
    interest_rate = gets.chomp
    
    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Interest rate must be positive.")
    else
      break
    end
  end
  
  prompt("What is the loan duration (in years)?")
  years = ''
  loop do # duration
    years = gets.chomp
    
    if years.empty? || years.to_f < 0
      prompt("Enter a valid number.")
    else
      break
    end
  end
  
  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12
  
  monthly_payment = amount.to_f * (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))
  
  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")
  
  prompt("Another calculation?")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('y')
end