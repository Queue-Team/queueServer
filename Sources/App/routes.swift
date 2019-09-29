import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "Queue API"
    }

    // configuring controllers
    let restaurantController = RestaurantController()
    router.get("restaurants", use: restaurantController.index)
    router.post("restaurants", use: restaurantController.create)
    router.delete("restaurants", Restaurant.parameter, use: restaurantController.delete)
    
    let orderController = OrderController()
    router.get("orders", use: orderController.index)
    router.post("orders", use: orderController.create)
    router.delete("orders", Order.parameter, use: orderController.delete)
}
