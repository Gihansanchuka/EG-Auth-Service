$(document).ready(function () {
  getAllUsers();

  function getAllUsers() {
    $.ajax({
      url: "http://localhost:8080/AuthenticationService/AuthenticationService/employees",
      method: "GET",
      dataType: "json",
      success: function (data) {
        $(data).each(function (i, users) {
          $("#usertablebody").append(
            $("<tr>")
              .append($("<td>").append(users.name))
              .append($("<td>").append(users.name))
              .append($("<td>").append(users.name))
              .append("<td>")
              .append(
                `<div class="action-btns">
                    <div class="btn-space">
                        <button type="button" class="btn btn-warning" id="` +
                  users.id +
                  `">Edit</button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-danger" id="` +
                  users.id +
                  `">Delete</button>
                    </div>
                </div>`
              )
          );
        });
      },
    });
  }

  $("#userlogin").on("click", function (e) {
    let data = {
      name: $($("#loginform")[0].email).val(),
      password: $($("#loginform")[0].pwd).val(),
    };

    $.ajax({
      url: "http://localhost:8080/AuthenticationService/AuthenticationService/login/user/" +data,
      method: "POST",
      dataType: "json",
      data: data,
      success: function (data) {
        console.log(data);
      },
    });
  });

  $("#userRegister").on("click", function (e) {
    let data = {
      name: $($("#registerform")[0].name).val(),
      password: $($("#registerform")[0].password).val(),
      birthday: $($("#registerform")[0].birthday).val(),
    };

    $.ajax({
      url: "http://localhost:8080/AuthenticationService/AuthenticationService/employees",
      method: "POST",
      dataType: "json",
      data: data,
      success: function (data) {
        console.log(data);
      },
    });
  });

  $("#deletebtn").click(function (e) {
    let id;
    // let id = $($(this)[0].data("deletebtnid"));
    e.preventDefault();
    $.ajax({
      url: "http://localhost:8080/AuthenticationService/AuthenticationService/employees" + id,
      method: "DELETE",
      dataType: "json",
      success: function (data) {
        getAllUsers();

        //do something with result
      },
    });
  });
});
