# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "ODSEmployee", :primary_key => "ID", :force => true do |t|
    t.string   "alias",                :limit => 100
    t.string   "LastName",             :limit => 100
    t.string   "FirstName",            :limit => 100
    t.string   "BusinessPhone",        :limit => 100
    t.string   "eMail",                :limit => 100
    t.string   "PhoneExtension",       :limit => 100
    t.string   "Title",                :limit => 100
    t.string   "SupervisorFirstName",  :limit => 100
    t.string   "SupervisorLastName",   :limit => 100
    t.string   "Department",           :limit => 100
    t.string   "BirthMonth",           :limit => 100
    t.string   "DayOfBirth",           :limit => 100
    t.datetime "Anniversary"
    t.string   "Location",             :limit => 100
    t.string   "DeskNumber",           :limit => 100
    t.string   "EENumber",             :limit => 100
    t.string   "OtherName",            :limit => 100
    t.string   "Status",               :limit => 100
    t.string   "NoBDay",               :limit => 100
    t.binary   "Picture"
    t.string   "Cell",                 :limit => 100
    t.string   "PrevLastName",         :limit => 100
    t.string   "PrePrevLastName",      :limit => 100
    t.string   "IsASupervisor",        :limit => 100
    t.string   "AdditionalExtensions", :limit => 100
    t.string   "AdditionalDirectDial", :limit => 100
    t.string   "SupervisorAlias",      :limit => 100
    t.string   "SupervisorName",       :limit => 100
    t.string   "PublishedToAD",        :limit => 50
    t.string   "HasDirects",           :limit => 100
    t.string   "Floor",                :limit => 100
    t.string   "RecordNotInABRA",      :limit => 50
  end

end
