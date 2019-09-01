class Api::CompletesSumController < ApplicationController
  def rep_sum
    @completes = Complete.all
    render "complete_sum.json.jb"
  end
end
