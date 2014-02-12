class Datasource
  require 'csv'

  def initialize(source)
    @table = CSV.readlines(source, headers: :first_row)
  end

  def table
    @table
  end

  def headers
    @table.headers
  end

  def data
    @table
  end
end