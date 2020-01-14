public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw()
{
        //not used
}

public int findFirstVowel(String words)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i = 0; i < words.length(); i++)
	{
	if (words.substring(i,i+1).equals("a"))
    return i;
    
    else if (words.substring(i,i+1).equals("e"))
    return i;
    
    else if (words.substring(i,i+1).equals("i"))
    return i;
    
    else if (words.substring(i,i+1).equals("o"))
    return i;
    
    else if (words.substring(i,i+1).equals("u"))
    return i;
	}
	return -1;

}

public String pigLatin(String words)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(words) == -1)
	{
		return words + "ay";
	}

	if (words.substring(0,2).equals("qu"))
	{
		return words.substring(2) + words.substring(0,2) + "ay";
	}

	if(findFirstVowel(words) == 0)
	{
		return words + "way";
	}

	
	else
	{
		return words.substring(findFirstVowel(words)) + words.substring(0,findFirstVowel(words)) + "ay";
	}
}
