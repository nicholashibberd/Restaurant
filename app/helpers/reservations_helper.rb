module ReservationsHelper
  def datepicker_params
    if params[:datepicker] == 'When would you like to visit?'
      ""
    else
      params[:datepicker]
    end
  end
end
