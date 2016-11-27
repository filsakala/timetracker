class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Metódy budú viditeľné z application_helper
  helper_method :datum, :datum_cas, :datum_cas_sekundy, :cas, :minuty_na_cas

=begin
    Naformátuje dátum do požadovaného tvaru na zobrazenie.
=end
  def datum(date=nil)
    return "-" if !date
    date.strftime("%d.%m.%Y")
  end

=begin
Naformátuje dátum a čas do požadovaného tvaru na zobrazenie.
=end
  def datum_cas(date=nil)
    return "-" if !date
    date.strftime("%d.%m.%Y %H:%M")
  end

=begin
Naformátuje dátum a čas do požadovaného tvaru na zobrazenie.
=end
  def datum_cas_sekundy(date=nil)
    return "-" if !date
    date.strftime("%d.%m.%Y %H:%M:%S")
  end

=begin
Naformátuje čas do požadovaného tvaru na zobrazenie.
=end
  def cas(time=nil)
    return "-" if !time
    time.strftime("%H:%M")
  end

=begin
Vezme minúty a naformátuje to v tvare HH:MM
=end
  def minuty_na_cas(min=nil)
    return "-" if !min
    hodiny=min / 60
    minuty=min - hodiny*60
    "#{hodiny.to_s.rjust(2, "0")}:#{minuty.to_s.rjust(2, "0")}"
  end
end
