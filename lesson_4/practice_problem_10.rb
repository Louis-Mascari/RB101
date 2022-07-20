=begin
Iterate through munsters hash
  add age_group key to each nested hash
  if age is 0-17 assign value "kid" to age_group
  if age is 18-64 assign value "adult" to age_group
  if age is 65+ assign value "senior" to age_group
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin
munsters.each do |person, stats|
  if munsters[person]["age"].between?(0,17)
    munsters[person]["age group"] = "kid"
  elsif munsters[person]["age"].between?(18,64)
    munsters[person]["age group"] = "adult"
  elsif munsters[person]["age"] > 64
    munsters[person]["age group"] = "senior"
  end
end
=end
munsters.each do |person, stats|
  case stats["age"]
    when 0..18
      stats["age_group"] = "kid"
    when 18..65
      stats["age_group"] = "adult"
    else
      stats["age_group"] = "senior"
  end
end

p munsters