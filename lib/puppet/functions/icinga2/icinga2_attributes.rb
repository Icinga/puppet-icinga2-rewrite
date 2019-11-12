# This is an autogenerated function, ported from the original legacy version.
# It /should work/ as is, but will not have all the benefits of the modern
# function API. You should see the function docs to learn how to add function
# signatures for type safety and to document this function using puppet-strings.
#
# https://puppet.com/docs/puppet/latest/custom_functions_ruby.html
#
# ---- original file header ----
require File.join(File.dirname(__FILE__), '../../..', 'puppet_x/icinga2/utils.rb')

# ---- original file header ----
#
# @summary
#   Summarise what the function does here
#
Puppet::Functions.create_function(:'icinga2::icinga2_attributes') do
  # @param args
  #   The original array of arguments. Port this to individually managed params
  #   to get the full benefit of the modern function API.
  #
  # @return [Data type]
  #   Describe what the function returns here
  #
  dispatch :default_impl do
    # Call the method named 'default_impl' when this is matched
    # Port this to match individual params for better type safety
    repeated_param 'Any', :args
  end


  def default_impl(*args)
    
    raise Puppet::ParseError, 'icinga2_atributes(): Must provide at least one argument.' if args.length > 4 || args.length < 1

    if args[1]
      indent = args[1]
    else
      indent = 0
    end

    if args[2]
      globals = args[2].concat(lookupvar('::icinga2::_reserved'))
    else
      globals = lookupvar('::icinga2::_reserved')
    end

    if args[3]
      constants = args[3].merge(lookupvar('::icinga2::_constants'))
    else
      constants = lookupvar('::icinga2::_constants')
    end

    Puppet::Icinga2::Utils.attributes(args[0], globals, constants, indent)
  
  end
end