<?
    class Paginator extends Dbconnect{
        public function paginator(){
            echo '<div class="paginator"';    
                $sql = "SELECT * FROM user"; 
                $result = $this->connect()->query($sql); #data from db 
                $records = $result->num_rows; #give number of record
                $record_pages = $records/10; #get the number of pages
                $record_pages = ceil($record_pages); #rounding number    
            echo '<ul id="paginator">';
                for($r = 1; $r <= $record_pages; $r++){  #generate pagination
                    echo '<li><a href=?page='.$r.'>'.$r.'</a></li>'; 
                };   
            echo '</div>';
            }
    }
    class Users extends Dbconnect{
        protected function getAllUsers(){
            if(isset($_GET['page'])){  #get current page
                $page = $_GET['page'];
            } else{
                $page = 1;
            }
            if($page == '' || $page == 1){
                $page1 = 0;
            } else{
                $page1 = ($page*10) - 10;
            };
            $sql = "SELECT * FROM user ORDER BY id ASC LIMIT $page1, 10";
            $result = $this->connect()->query($sql);
            $numRows = $result->num_rows;
            if($numRows > 0){
                while($row = $result->fetch_assoc()){
                    $data[] = $row;
                }                 
            return $data;
            }

        }
    };

    class addUser extends Dbconnect{
        public function adduser(){
            $fsname = $_POST['first_name'];
            $lsname = $_POST['last_name'];
            $email = $_POST['email'];
            $company_name= $_POST['company_name'];
            $position = $_POST['position'];
            $mobile_phone = (int) $_POST['mobile_phone'];
            $home_phone = (int) $_POST['home_phone'];
            $work_phone = (int) $_POST['work_phone'];

            $adduser = "INSERT INTO user (first_name, last_name, email, company_name, position, mobile_phone, home_phone, work_phone)
            VALUES ('$fsname', '$lsname', '$email', '$company_name', '$position', '$mobile_phone', '$home_phone', '$work_phone')";
            
            $add_result = $this->connect()->query($adduser);
        }
    }

    class Update extends Dbconnect{
        public function updateData(){
            $id = (int) $_POST['id'];
            $fsname = $_POST['first_name'];
            $lsname = $_POST['last_name'];
            $email = $_POST['email'];
            $company_name= $_POST['company_name'];
            $position = $_POST['position'];
            $mobile_phone = (int) $_POST['mobile_phone'];
            $home_phone = (int) $_POST['home_phone'];
            $work_phone = (int) $_POST['work_phone'];

            $sql = "UPDATE user SET first_name = '$fsname', last_name='$lsname', email='$email',
            company_name='$company_name', position='$position', mobile_phone='$mobile_phone', home_phone='$home_phone',
            work_phone='$work_phone' WHERE id='$id'";

            $update_result = $this->connect()->query($sql);
            header('Location: index.php');
            
        }
    };

    class Delete extends Dbconnect{
        function deleteUser(){
            $id = $_POST['id'];

            $sql = "DELETE FROM user WHERE id=$id";

            $delete_result = $this->connect()->query($sql);
        }
    };
    
    

    class Viewusers extends Users{
        public function showAllUsers(){
            echo '<div class="content" style="display: flex; flex-wrap: wrap; text-align: center;">';
            $datas = $this->getAllUsers();
            foreach($datas as $data){
                echo '<div class="users">' .
                '<form name="form_update" action="header_delete.php" method="post"' .
                '<p id="users">' .
                "<input type='text' name='id' id='data-user' value=$data[id]>" .
                '<br>'.
                "<input type='text' name='first_name' id='data-user' value=$data[first_name]>". 
                '<br>' .
                "<input type='text' name='last_name' id='data-user' value=$data[last_name]>".
                '<br>' . 
                "<input type='text' name='email' id='data-user' value=$data[email]>". 
                '<br>' . 
                "<input type='text' name='company_name' id='data-user' value=$data[company_name]>". 
                '<br>' . 
                "<input type='text' name='position' id='data-user' value=$data[position]>". 
                '<br>' . 
                "<input type='text' name='mobile_phone' id='data-user' value=$data[mobile_phone]>". 
                '<br>' .
                "<input type='text' name='home_phone' id='data-user' value=$data[home_phone]>". 
                '<br>' .
                "<input type='text' name='work_phone' id='data-user' value=$data[work_phone]>". 
                '</p>' .
                '<br>' . 
                '<input type="submit" value="Delete user">' .
                '<br>' .
                '<input type="submit" formaction="header_update.php" value="Update data">' . 
                '</form>' .
                '</div>';
            }
            echo '</div>';
        }                     
    }
?>
