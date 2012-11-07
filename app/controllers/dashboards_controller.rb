class DashboardsController < ApplicationController
  def show
    @monies = Money.limit(10).order(:date)
  end
end
