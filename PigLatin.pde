import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw() {
}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	if(sWord.length()>0){
	for(int i=0; i<sWord.length(); i++){
		String poo = sWord.substring(i,i+1);
			if(poo.equals("a")||poo.equals("e")||poo.equals("i")||poo.equals("o")||poo.equals("u")){
				return i;
			}
	}
	return -1;
} return -2;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
if(sWord.length()>0){
	if(findFirstVowel(sWord) == -1) {
	   return sWord + "ay";
	} else if (findFirstVowel(sWord)!= -1){

		if(findFirstVowel(sWord)==0){
			return sWord + "way";
		} else if (sWord.charAt(0)=='q' && sWord.charAt(1)=='u') {
			return sWord.substring(2) + "quay";
		} else {
			return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
		}

	} else return " ";
} else return " ";
}
