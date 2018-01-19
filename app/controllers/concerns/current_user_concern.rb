module CurrentUserConcern
  extend ActiveSupport::Concern
def current_user
#if not user treat as as a guest , super: act normal regardless to what following
  super || guest_user
end

def guest_user
  OpenStruct.new(name: "Guest user",
                first_name: "Guest",
                last_name: "user" )
end
end
