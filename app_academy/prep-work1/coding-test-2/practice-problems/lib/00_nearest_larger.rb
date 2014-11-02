def nearest_larger(arr, idx)
	iter = 0
	while true
		left = idx-iter
		right = idx+iter
		if (left >=0) && (arr[left]>arr[idx])
			return left
		elsif (right< arr.length) && (arr[right]>arr[idx])
			return right
		elsif (left<0) && (right >=arr.length)
			return nil
		end
		iter+=1
	end
end

# def nearest_larger(arr, idx)
# 	iter = 0
# 	while true 
# 		left = idx - iter
# 		right = idx + iter
		
# 		if (left >= 0) && (arr[left] > arr[idx])
# 	 		return left
# 	 	elsif (right < arr.length) && (arr[right]> arr[idx])
# 	 		return right
# 	 	elsif (left < 0) && (right >= arr.length)
# 	 		return nil
# 	 	end

#  		iter +=1
#  	end
# end
