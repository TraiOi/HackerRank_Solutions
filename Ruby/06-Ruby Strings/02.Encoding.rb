# Structured like any other data type in Ruby, strings are objects of the String class. This class defines a powerful set of operations and methods for manipulating text: indexing, searching, modifying etc. So, in addition to creating strings, you can also create new strings with String.new method. It will return a string with no characters with no arguments.
# Until Ruby 1.8, the strings were nothing but a collection of bytes. You indexed the data by byte counts, got the size in number of bytes and so on. However, in Ruby 1.9, strings have additional Encoding information attached to the bytes, which provide information on how to interpret them.
# | > str = "With ♥!"
# | > str.encoding.name
# | "UTF-8"
# | > str.size
# | 7
# | > str.bytesize
# | 9
# You can observe several things in the above example:
#     The string literal creates an object which has several accessible methods.
#     It also has attached encoding information. In our case, it's an UTF-8 string.
#     Size and bytesize now differ. The former corresponds to how many characters we see visually while the latter corresponds to the actual space taken by the characters in the memory. Showing a heart symbol requires 3 bytes instead of 1.
# Although we used UTF-8, the most popular and recommended encoding style for content as an example, Ruby supports around 100 other encodings which you can look at with:
# | puts Encoding.list
# Naturally, this leads us to the idea of interconversion or compatibility among different encodings: setting encoding information for some source of text.
# This challenge, though easy, is a bit exploratory and requires you to read and understand Encoding and related Ruby methods. (see links above)
# Challenge: Define a function called transcode which takes a ISO-8859-1 encoded string as input and convert it to a UTF-8 encoded string. Then, return the result.

def transcode(enc)
	return enc.force_encoding("UTF-8")
end