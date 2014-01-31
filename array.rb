class Array
	# Problem 1
	def calculate_special_average
		max = self[0]
		min = self[0]
		sum = 0
		count = 0
		max_count = 0
		min_count = 0
		for element in self
			if element > max
				max = element
				max_count = 0
			elsif element < min
				min = element
				min_count = 0
			elsif element == max
				max_count +=1
			elsif element == min
				min_count +=1
			end
			sum = sum + element
			count = count + 1
		end
		if count == 0
			0
		elsif count <= 2
			sum / count
		else
			(sum - max * max_count - min * min_count) / (count - min_count - max_count)
		end
	end
# Problem 2
# Test cases:
# A normal array: [1, 3, 5, 7, 9]
# An empty array: []
# An array with one element: [1]
# An array with two element: [1, 2]
# A large array with random generated numbers, probably 10,000 elements

	# Problem 3
	def flatten
		arr = []
		for element in self
			if element.class == Array
				arr = arr + element.flatten
			else
				arr.push element
			end
		end
		arr
	end
end