Rails.application.routes.draw do

namespace :api do
  namespace :v1 do
    resources :eras do
      resources :dino_types do
          resources :dinosaurs
        end
      end
    end
  end
end


##now we can only access dino_types through eras, and only access dinosaurs through dino_types 
##era/1/dino_types/2/dinosaur/1
##http:/localhost:3000/api/v1/eras/dino_typ
