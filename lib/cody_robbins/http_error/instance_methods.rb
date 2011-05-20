module CodyRobbins
  module HttpError
    module InstanceMethods
      protected

      def http_error(code)
        render(:file => Rails.root.join('public', "#{code}.html"),
               :layout => false,
               :status => code)
        return(false)
      end
    end
  end
end
