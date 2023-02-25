<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $static_fields = [
            [
                'option_name' => 'empty_cart_text',
                'option_value' => 'No products in your cart!',
            ],
            [
                'option_name' => 'back_to_home_text',
                'option_value' => 'Back to home',
            ],
            [
                'option_name' => 'empty_cart_image',
                'option_value' => '',
            ],
            [
                'option_name' => 'clear_cart_text',
                'option_value' => 'Clear Cart',
            ],
            [
                'option_name' => 'update_cart_text',
                'option_value' => 'Update Cart',
            ],
            [
                'option_name' => 'cart_continue_shopping_text',
                'option_value' => 'Continue Shopping',
            ],
            [
                'option_name' => 'cart_coupon_discount_title',
                'option_value' => 'Coupon Discount',
            ],
            [
                'option_name' => 'cart_coupon_discount_subtitle',
                'option_value' => 'No products in your cart!',
            ],
            [
                'option_name' => 'cart_coupon_discount_placeholder',
                'option_value' => 'Enter your coupon code',
            ],
            [
                'option_name' => 'cart_apply_coupon_text',
                'option_value' => 'Apply Coupon',
            ],
            [
                'option_name' => 'cart_total_title',
                'option_value' => 'Cart Total',
            ],
            [
                'option_name' => 'cart_proceed_to_checkout_text',
                'option_value' => 'Proceed to checkout',
            ],
        ];

        foreach ($static_fields as $field) {
            \App\StaticOption::updateOrCreate([
                'option_name' => $field['option_name']
            ], [
                'option_name' => $field['option_name'],
                'option_value' => $field['option_value'],
            ]);
        }
    }
}
