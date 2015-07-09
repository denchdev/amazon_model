class Order < ActiveRecord::Base
  states = %w(in\ progres complited shipped)

  belongs_to :customer
  belongs_to :credit_card
  has_many :order_items
  belongs_to :billing_address,  class_name: "Address", foreign_key: "billing_address_id"
  belongs_to :shipping_address, class_name: "Address", foreign_key: "shipping_address_id"
  
  validates_presence_of :total_price, :state
  validates_presence_of :completed_date, if: -> {self.state == states[1]}
  validates :state, inclusion: { in: states, message: "%{value} is not a valid value" }

  after_initialize :set_default_state
  after_initialize :set_default_total_price
  before_save :calc_and_set_total_price

  scope :in_progress, -> {where(state: state[0])}

  
