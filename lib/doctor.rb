class Doctor

    attr_accessor :name, :appointment, :patient
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def appointments
        Appointment.all.select { | date | date.doctor == self }
    end 
    
    def new_appointment(date_and_time, patient_name)
        Appointment.new(date_and_time, patient_name, self)
    end
    
    def patients
        Appointment.all.map { | date | date.patient }
    end 

end 
