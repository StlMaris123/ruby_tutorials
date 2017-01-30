f = File.open("text.txt", "r+")
f.seek(-5, IO::SEEK_END)
f.putc "X"
f.close

f = File.open("text.txt", "r")
while a = f.getc
  puts a.chr
  f.seek(5, IO::SEEK_CUR)
end
