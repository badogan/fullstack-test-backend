class ProductController < ApplicationController
    def validproduct
        current_product = Product.find_by(productvalidity:true)
        render json: {productname: current_product.productname, productcode:current_product.productcode}
    end
end
