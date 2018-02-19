 protected void Page_Load(object sender, EventArgs e)
        {

            // Creating a connection string to a DB
            string CS;
            //CS = "data source = . ; database = IA480 ; integrated security = SSPI";

            CS = ConfigurationManager.ConnectionStrings["DBIA480-CS"].ConnectionString;

            // Creat SQL connection to DB 
            SqlConnection con = new SqlConnection(CS);

            // Creating a command to connect to SQL
            SqlCommand cmd = new SqlCommand();



            cmd.Connection = con;
            cmd.CommandText = "Select * from Student"; //Actual Query

            con.Open();

            SqlDataReader rdr = cmd.ExecuteReader();


            Student.DataSource = rdr;
            Student.DataBind();
            con.Close();
        }