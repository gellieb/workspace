# Martha has created a hash with letter symbols as keys to represent items that start with their keys. However, she realized everything is off by one letter.

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }
# Write a program hash_correct that takes this wrong hash and returns the correct one.

def hash_correct(hash)
	Hash[hash.map {|k,v| [(v[0].to_sym), v]}]
end
# def new_key(hash)
# 	hash.values.map {|value| value[0].to_sym}
# end



# def hash_correct(hash)
  
# 	hash.map {|k, v| [(k.to_s.ord + 1).chr.to_sym, v]}]
# end

# p new_key(hash)
p hash_correct(wrong_hash)

# renamed_hash = {:a => :b, :b =>:c, :c => :d, :d=> :e}
# Hash[wrong_hash.map {|k,v| [renamed_hash[k],v]}]