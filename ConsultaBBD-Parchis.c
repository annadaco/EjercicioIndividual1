int main(int argc, char **argv)
{
	//Conector para acceder al servidor de bases de datos 
	MYSQL *conn;
	int err;
	//Creamos una conexion al servidor MYSQL 
	conn = mysql_init(NULL);
	if (conn==NULL) {
		printf ("Error al crear la conexion: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	
	//inicializar la conexion, indicando nuestras claves de acceso
	// al servidor de bases de datos (user,pass)
	conn = mysql_real_connect (conn, "localhost","root", "mysql", NULL, 0, NULL, 0);
	if (conn==NULL)
	{
		printf ("Error al inicializar la conexion: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	//indicamos la base de datos con la que queremos trabajar 
	err=mysql_query(conn, "use PARCHIS;");
	if (err!=0)
	{
		printf ("Error al crear la base de datos %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	
	printf("Dime el jugador que tenga mas puntuacion y su usuario empiece por A\n");
	err=mysql_query(conn, "SELECT usuario FROM Jugador WHERE usuario LIKE 'A%' AND puntuaciones IN ( SELECT MAX(puntuaciones) FROM Jugador )");
	if (err!=0){
		printf ("Error al conusltar datos de la base %u %s\n" mysql_errno(conn, mysl_error(conn));
		exit(1);
	}
	resultado = mysql_store_result(conn);
	
	row = mysql_fetch_row (resultado);
	if (row == NULL)
		printf ("No se han obtenido datos en la consulta\n");
	else
		while (row !=NULL) {
			printf ("Usuario: %s, puntuacion: %d\n", row[0], row[1]);
			row = mysql_fetch_row (resultado);
		}
	
	mysql_close(conn);
	exit(0);
}
