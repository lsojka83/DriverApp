<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/jspf/admin-header.jspf" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">CRUD Użytkowników</h1>
        <a href="/admin/addedituser" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Dodaj użytkowników</a>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">List użytkowników</h6>
        </div>
              <c:if test="${answerUsed=='yes'}">
                     <div class="card-header py-3">
                            <h2 class="m-0 font-weight-bold text-primary">Rola używana, nie można skasować</h2>
                        </div>
                  </c:if>
        <div class="card-body">
            <div class="table-responsive-lg">

                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nazwa</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Nr uuid</th>
                        <th>Aktywny</th>
                        <th>Wysłał prośbę o reset hasła</th>
                        <th>Akcje</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr role="row" class="odd">
                            <td class="sorting_1">${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td>
                            <c:forEach var="role" items="${user.roles}">
                            ${role.name}
                            </c:forEach>
                            </td>
                            <td>${user.uuid}</td>
                            <td>${user.enabled}</td>
                            <td>${user.sentResetRequest}</td>
                            <td>
                                <a href="/admin/addedituser?id=${user.id}">Edytuj</a>
                                <a href="/admin/deleteuser?id=${user.id}" onclick="return confirm('Czy skasować?')">Skasuj</a>
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
<%@ include file="/WEB-INF/views/jspf/admin-footer.jspf" %>