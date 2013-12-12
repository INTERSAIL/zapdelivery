# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.unscoped.delete_all
User.unscoped.create!({"id"=>1, "email"=>"alessandro2.fornasari@intersail.it", "password"=>"alessandro","password_confirmation"=>"alessandro", "reset_password_token"=>nil, "reset_password_sent_at"=>nil, "remember_created_at"=>nil, "sign_in_count"=>7, "current_sign_in_at"=>"2013-10-28 09:17:48.488319", "last_sign_in_at"=>"2013-10-28 08:48:38.274335", "current_sign_in_ip"=>"127.0.0.1", "last_sign_in_ip"=>"127.0.0.1", "created_at"=>"2013-10-14 13:33:34.031448", "updated_at"=>"2013-10-28 09:17:48.492476", "name"=>"Alessandro"})
User.unscoped.create!({"id"=>2, "email"=>"federica.santicoli@intersail.it", "password"=>"federica","password_confirmation"=>"federica", "reset_password_token"=>nil, "reset_password_sent_at"=>nil, "remember_created_at"=>nil, "sign_in_count"=>2, "current_sign_in_at"=>"2013-10-21 14:41:03.985236", "last_sign_in_at"=>"2013-10-15 07:59:06.000000", "current_sign_in_ip"=>"127.0.0.1", "last_sign_in_ip"=>"127.0.0.1", "created_at"=>"2013-10-15 07:58:19.620146", "updated_at"=>"2013-10-21 14:41:03.986205", "name"=>"Fede"})

