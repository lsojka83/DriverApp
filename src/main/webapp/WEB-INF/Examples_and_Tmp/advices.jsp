<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ include file="/WEB-INF/views/jspf/header.jspf" %>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">CRUD Kategorii</h1>
    <a href="/admin/addcategory" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i>Dodaj kategorie</a>
  </div>

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Lista</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive-lg">

        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
          <tr>
            <th>Id</th>
            <th>Nazwa</th>
            <th>Akcje</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach var="category" items="${categories}">
            <tr role="row" class="odd">
              <td class="sorting_1">${category.id}</td>
              <td>${category.name}</td>
              <td>
                <a href="/admin/editcategory?id=${category.id}">Edytuj</a>
                <a href="/admin/deletecategory?id=${category.id}" onclick="return confirm('Czy skasować?')">Skasuj</a>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>

      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<%@ include file="/WEB-INF/views/jspf/footer.jspf" %>