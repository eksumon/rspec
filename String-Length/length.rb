class Length

	def str (st)
		if (st.is_a? String) 
			return st.length
		else 
			return "not a string"
		end
	end

end