sagar = Employee.create(:first_name => "Sagar", :last_name => "Shah")
agro_farma = Project.create(:name => "Agro-Farma")

commitment1 = Commitment.create(:employee => sagar, :description => "Value Chobani")

agro_farma.commitments << commitment1