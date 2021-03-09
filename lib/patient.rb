class Patient

    attr_accessor :name, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def appointments
        Appointment.all.select { | date | date.patient == self }
    end
    
    
    def new_appointment(date_and_time, doctor_name)
        Appointment.new(date_and_time, self, doctor_name)
    end 
    
    def doctors
        Appointment.all.map { | date | date.doctor }
    end


end 
