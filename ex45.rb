52

Lowercase %i stands for

Non-interpolated Array of symbols, separated by whitespace (after Ruby 2.0)

In addition, uppercase %I means

Interpolated Array of symbols, separated by whitespace (after Ruby 2.0)

Example of difference regarding interpolation:

2.4.2 :001 > a = 1
2.4.2 :002 > %i{one two #{a}+three} # Interpolation is ignored
 => [:one, :two, :"\#{a}+three"]
2.4.2 :003 > %I{one two #{a}+three} # Interpolation works
 => [:one, :two, :"1+three"]