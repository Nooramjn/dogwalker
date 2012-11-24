class Message < ActiveRecord::Base
attr_accessible :walker_id, :date, :subject, :sendername, :content

belongs_to :walker


validates :walker_id, :presence => true
validates :date, :presence => true
validates :subject, :presence => true
validates :sendername, :presence => true
validates :content, :presence => true

scope:for_walker,lambda{|walker_id|where('walker_id = ?', walker_id)}
scope:latest,lambda{|num|limit(num).order('date DESC')}


end
