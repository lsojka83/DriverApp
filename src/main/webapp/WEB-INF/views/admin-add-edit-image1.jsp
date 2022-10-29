<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/jspf/admin-header.jspf" %>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">CRUD obraz�w</h1>
    </div>

    <form name="fileUpload" method="POST" action="/admin/addimage" enctype="multipart/form-data">
    <label>Wybierz plik:</label> <br>
    <input type="file" name="file" class="btn btn-warning"/>
     <br>
    <input type="text" name="name" id="name" value="">
    <label for="name">Nazwa</label>
    <p></p>
     <input type="submit" name="submit" value="Wy�lij" class="btn btn-success"/>
    </form>


<form:form action="/admin/addimage" method="post" modelAttribute="image">
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Dodaj obraz</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                        <tbody>
                        <tr>
                            <td>Nazwa</td>
                            <td>
                                <form:input path="name" type="text" name="name" placeholder="Nazwa"  />
                                <form:errors path="name"/>
                            </td>
                        </tr>

                        </tbody>
                    </table>

                </div>
            </div>
        </div>

    <form:hidden path="id"/>


        <div class="text-center">
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit" name="confirm"
                    value="yes">Zapisz</button>
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit" name="confirm"
            value="no" formnovalidate>Zrezygnuj</button>
        </div>
</form:form>

</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<%@ include file="/WEB-INF/views/jspf/admin-footer.jspf" %>
