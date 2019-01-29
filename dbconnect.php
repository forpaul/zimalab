<?
    class Dbconnect{
        private $server;
        private $username;
        private $password;
        private $dname;

        protected function connect(){
            $this->server = 'localhost';
            $this->username = 'root';
            $this->password = '';
            $this->dbanme = 'zimalab';
        $connection = new mysqli($this->server, $this->username, $this->password, $this->dbanme);
        return $connection;
        }
    }
?>


