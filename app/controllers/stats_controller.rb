class StatsController < ApplicationController
  def index
    @values = []
    Outbox.all.group_by { |o| o.created_at.year }.each do |year, outboxes|
      @values << {name: year.to_s, data: Hash[outboxes.group_by{|o| o.stato}.map{|s,o| [s,o.count]}] }
    end

#    @values = [
#        {name: t('activerecord.models.shipment.other').to_s, data: Hash[Outbox.group(:stato).count.map { |k,v| [Outbox.stato.find_value(k).humanize,v] }]}
#    ]

  end
end
