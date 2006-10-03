namespace :hoff do
  desc "Calculates the Hoff ratio for your application"
  task :ratio do
    app_lines = Float(`find app lib -name *.rb | xargs wc -l`.split[-2])
    test_lines = Float(`find test -name *.rb | xargs wc -l`.split[-2])
    hoff_files = Float(`grep -lr 'hoff' app lib | wc -l`.split.first)
    
    hoff_ratio = (app_lines * hoff_files) / test_lines 
    
    puts "Your Hoff Ratio is: #{hoff_ratio}"
    if hoff_ratio < 1.0
      puts "YOU ARE WEAK! You will never drive a robot car!"
    else
      puts "You have proven yourself worthy of F.L.A.G."
    end     
  end
end