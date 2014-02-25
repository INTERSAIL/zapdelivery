class StatsController < ApplicationController
  def index
    cur_year = (params[:year] || Time.now.year).to_i

    @values = []
    Outbox.all.where(['created_at >= ? AND created_at < ?', Time.new(cur_year),Time.new(cur_year+1)]).group_by { |o| o.created_at.month }.each do |year, outboxes|
      @values << {name: t("date.month_names")[year].titleize, data: multigroup_by(outboxes) {|o| o.stato.humanize} }
    end

    @channels = multigroup_by(Shipment.includes(:account).where(['created_at >= ? AND created_at < ?', Time.new(cur_year),Time.new(cur_year+1)])) { |s| s.account.channel.name }

  end

  def in_year(field, cur_year)
    where(["#{field} >= ? AND #{field} < ?", Time.new(cur_year),Time.new(cur_year+1)])
  end

  def multigroup_by(values, &block)
    Hash[values.group_by(&block).map { |k,v| [k,v.count] }]
  end
end
