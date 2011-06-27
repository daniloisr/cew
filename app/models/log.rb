# coding: utf-8
class Log < ActiveRecord::Base
  default_scope :order => 'created_at DESC'
  
  cattr_reader :per_page
  @@per_page = 25
end
