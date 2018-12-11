# actions specifications
actions :create, :install, :uninstall

# attribute specifications
attribute :package, kind_of: String
attribute :key, kind_of: String
attribute :proxy, kind_of: String

attr_accessor :exists
