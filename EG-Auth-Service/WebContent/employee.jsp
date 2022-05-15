<%@page import="com.auth.service.EmployeeService"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="./styles.css" />
    <link rel="script" href="./script.js" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="employee-table">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">First</th>
              <th scope="col">Last</th>
              <th scope="col">Handle</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody id="usertablebody">
          			<%    
          				EmployeeService emObj = new EmployeeService();
						out.print(emObj.readEmployee());   
					%>  
            <!-- <tr>
              <th scope="row">1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>Otto</td>
              <td>
                <div class="action-btns">
                  <div class="btn-space">
                    <button type="button" class="btn btn-primary">Add</button>
                  </div>
                  <div class="btn-space">
                    <button type="button" class="btn btn-warning">Edit</button>
                  </div>
                  <div>
                    <button type="button" class="btn btn-danger">Delete</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>
                <div class="action-btns">
                  <div class="btn-space">
                    <button type="button" class="btn btn-primary">Add</button>
                  </div>
                  <div class="btn-space">
                    <button type="button" class="btn btn-warning">Edit</button>
                  </div>
                  <div>
                    <button type="button" class="btn btn-danger">Delete</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>@twitter</td>
              <td>@twitter</td>
              <td>@twitter</td>
              <td>
                <div class="action-btns">
                  <div class="btn-space">
                    <button
                      type="button"
                      class="btn btn-primary"
                      data-bs-toggle="modal"
                      data-bs-target="#staticBackdrop"
                    >
                      Add
                    </button>
                  </div>
                  <div class="btn-space">
                    <button type="button" class="btn btn-warning">Edit</button>
                  </div>
                  <div>
                    <button type="button" class="btn btn-danger">Delete</button>
                  </div>
                </div>
              </td>
            </tr> -->
          </tbody>
        </table>
      </div>
    </div>

    <!-- Modal -->
    <div
      class="modal fade"
      id="staticBackdrop"
      data-bs-backdrop="static"
      data-bs-keyboard="false"
      tabindex="-1"
      aria-labelledby="staticBackdropLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">...</div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-primary">Understood</button>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
