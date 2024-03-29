class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect{|appointment| appointment.patient}
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

end
