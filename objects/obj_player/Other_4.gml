/// @description Auto save

if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

var file;
var i,file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
for(i=0 ; i<7 ; i++ )
	{
		file_text_writeln(file);
		file_text_write_real(file,scr[i]);
	}
file_text_close(file);




//file_text_write_real(file, room);
//file_text_close(file);