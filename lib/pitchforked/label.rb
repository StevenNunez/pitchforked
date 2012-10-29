require_relative 'album'

class Label 
  extend Unique
  include PrimKey
  include ActiveWreckord
  attr_accessor :id, :name

  def self.table
    "labels"
  end

  def initialize
    self.class.all << self
  end

  def self.all
    @@labels ||= []
  end
end