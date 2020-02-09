class OrderController < ApplicationController
    def neworder
        user = get_current_user
        if user
            new_order = Order.create(new_order_params)
            new_order.product_id = Product.find_by(productvalidity:true).id
            new_order.user_id = user.id
            new_order.save()
            # render the newly created object # clean up! not all order details are needed
            render json: new_order
        end
    end

    def getcurrentuserorders
        user = get_current_user
        if user 
            render json: user.orders
        else
            render json: { error: 'Username/password invalid.' }, status: 403
        end
    end
    
    private

    def new_order_params
        params.require(:neworder).permit(:size_id)
    end 
  
end
