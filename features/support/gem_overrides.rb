module PageObject
  module Elements
    class Element

	  def method_missing(*args, &block)
        m = args.shift
        begin
          element.send m, *args, &block
        rescue Exception => e
          raise
        end
	  end
	  
	end
  end
end