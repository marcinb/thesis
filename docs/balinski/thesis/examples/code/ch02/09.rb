[].should be_empty  # prawda, [] jest pusta tablica

["kot", "pies"].should include("malpa") # falsz, testowana tablica nie zawiera elementu "malpa"

[].should be_instance_of(Array) # prawda
