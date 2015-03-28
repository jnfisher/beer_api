
module API
  module V1
    class Beers < Grape::API
      include API::V1::Defaults

      resource :beers do
        desc "Return all the beers"
        get "", root: :beers do
          Beer.all
        end

        desc "Return a beer"
        params do
          requires :id, type: String, desc: "ID of the beer"
        end
        get ":id", root: "beer" do
          Beer.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end