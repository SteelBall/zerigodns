module ZerigoDNS
  #@attr [String] api_key The Api key generated by Zerigo DNS
  #@attr [String] user Your e-mail address
  #@attr [Boolean] secure Whether to use HTTPS
  class Config
    attr_accessor :api_key, :user, :secure, :site
    
    def initialize
      @site = 'https://ns.zerigo.com/api/1.1'
    end
    
    # @return [Boolean] +true+ if +https+ is used
    def secure?
      !!secure
    end
    
    
    # Set +https+ or +http+
    # @param [Boolean] value +true+ to use +https+, false for +http+
    # Note: Will change the value of +site+!
    def secure= value
      @secure=value

      if secure?
        site = 'https://ns.zerigo.com/api/1.1'
      else
        site = 'http://ns.zerigo.com/api/1.1'
      end
      
      secure
    end
  end
end
