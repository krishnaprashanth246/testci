(*
This program takes a string as input.
It comprises of two functionalities.
-To return reverse string.
-To check whether the input string is a palindrome

It uses the class Rev to accomplish these tasks
*)


class Rev {
		--class for containing the function
		--to reverse the input string
	len : Int;
	istr : String <- "";
	i : Int <- 0;
	
	reverse(str : String) : String {
	{
		len <- str.length();
		
		while i < len loop
		{
			istr <- istr.concat(str.substr(len-i-1,1));
			i <- i+1;
		}
		pool;
		
		istr; 	--The final reversed string
	}
	};
};




class Main inherits IO {
	--the Main class
	
	str : String ;
	revstr : String;
		--for containing reverse string
	inn : Int;
	
	main() : Object {
	{
		out_string("Enter the string : ");
		str <- in_string();
		
		revstr <- (new Rev).reverse(str);	--the reversed string
		
		out_string("Enter 0 to give the reverse string, 1 to check whether it is a palindrome.\n");
		inn <- in_int();
		
		if inn = 0 then	--option for reversal
		
			{
				out_string("The reversed string is : ");
				out_string(revstr);
			}
			
		else 
			{
				if inn = 1 then 	--option for checking of palindrome
				
					{
						if str = revstr then 	--string is a palindrome if 
									--and only if the input string 
									--and the reversed string of 
									--it are exactly the same
						
							out_string("\nThe string is a palindrome.\n") 
							
						else 
							out_string("\nThe string is not a palindrome.\n") 
						fi;
					}
					
				else
					{
						out_string("Enter appropriate option\n");
						main();
					}
					--entering wrong option is an error, so main is called again
				fi ;
			} 
			
		fi;
		
		out_string("\n");
	}
	};
	
};
