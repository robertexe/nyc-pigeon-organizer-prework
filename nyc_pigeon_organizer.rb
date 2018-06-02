

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do | att, hash |
    hash.each do | details, names |
      names.each do | name |

        if pigeon_list[name] == nil
          pigeon_list[name] = {att => [details.to_s]}
        elsif pigeon_list[name][att] == nil
          pigeon_list[name].merge!({att => [details.to_s]})
        else
          pigeon_list[name][att] << details.to_s
        end
      end
    end
  end
  pigeon_list
end
