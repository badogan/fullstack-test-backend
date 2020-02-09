class SizeController < ApplicationController
    def validsizes
        array_of_validsizes_hash = [] ; temp = {}
        Size.all.each{|size|
            temp['sizeid'] = size.id ; temp['sizename'] = size.sizename
            array_of_validsizes_hash << temp ; temp = {}
        }
        render json: array_of_validsizes_hash
    end
end
