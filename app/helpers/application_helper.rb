module ApplicationHelper
  def localized_unit_price(unit_price, unit)
    quantity = Quantity.new(1, Quantity::Unit.for(unit.to_sym))
    factor =  case quantity.unit.dimension.name
              when :mass
                case I18n.locale
                when :en
                  quantity.convert(unit = :lb)
                else
                  quantity.convert(unit = :kg)
                end
              else
                quantity
              end
    
    price = factor.value * unit_price
  
  rescue  
    price = unit_price
  ensure
    case I18n.locale      
    when :ja
      return "1#{I18n.t ['units', unit].join('.')} #{number_to_currency(price)}"
    else
      return "#{number_to_currency(price)} / #{I18n.t ['units', unit].join('.')}"
    end
  end
end
