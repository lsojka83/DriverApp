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
        <h1 class="h3 mb-0 text-gray-800">CRUD Pytań</h1>

    </div>

    <form:form action="/admin/addeditquizquestion" method="post" modelAttribute="quizQuestion">
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Dodaj pytanie</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <tbody>

                        <tr>
                            <td>Treść</td>
                            <td>
                                <form:textarea path="questionText" type="text" name="questionText" placeholder="Treść" rows="5" cols="20"/>
                                <form:errors path="questionText"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Kategoria</td>
                            <td>
                                <form:select path="category" items="${categories}" itemLabel="name" itemValue="id"/>
                                <form:errors path="category"/>
                            </td>
                        </tr>

                        <tr>
                            <td>Poprawna odpowiedz</td>
                            <td>
                                <form:select path="correctAnswer" items="${quizAnswers}" itemLabel="answerText" itemValue="id"/>
                                <form:errors path="correctAnswer"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Niepoprawna odpowiedz 1</td>
                            <td>
                                <form:select path="firstIncorrectAnswer" items="${quizAnswers}" itemLabel="answerText" itemValue="id"/>
                                <form:errors path="firstIncorrectAnswer"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Niepoprawna odpowiedz 2</td>
                            <td>
                                <form:select path="secondIncorrectAnswer" items="${quizAnswers}" itemLabel="answerText" itemValue="id"/>
                                <form:errors path="secondIncorrectAnswer"/>
                            </td>
                        </tr>

                        </tbody>

                    </table>

                </div>
            </div>
        </div>

        <form:hidden path="id"/>
        <form:hidden path="createdOn"/>

        <div class="text-center">
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit" name="confirm"
                    value="yes">Zapisz</button>
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit" name="confirm"
            value="no" formnovalidate> Zrezygnuj </button>
        </div>
    </form:form>

</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<%@ include file="/WEB-INF/views/jspf/admin-footer.jspf" %>
