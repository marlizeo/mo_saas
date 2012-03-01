class Class
  
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name+'_history'
    class_eval %Q{
      def #{attr_name}=(attr_name)
        @attr_name = attr_name  
        if @history
          @history.push(attr_name)
        else
          @history = [nil, attr_name]
        end
      end
      
      def #{attr_name}
        @attr_name
      end
      
      def #{attr_name+'_history'}
        @history     
      end
      }
  end
end