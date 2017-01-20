<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>quiz</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">

    <link href="resources/styles/compiled/index.css" rel="stylesheet"></link>
    <link href="resources/styles/compiled/ingame_admin.css" rel="stylesheet"></link>
</head>

<body>
    <div class="global-header">
        <div class="brand">
            quiz
        </div>
        <div class="profile">
            <a href="deconnexion">Deconnexion</a> (Michel de Lakonta)
        </div>
    </div>
    <div class="ingame-content">
        <div class="bread">Question 3 sur 1000</div>
        <div class="admin-controles">
            <a href="afficherStats">Afficher les resultats</a>
            <a>Afficher la bonne réponse</a>
            <a href="questionCourrante">Lancer la prochaine question</a>
            <a>Arrêter le quiz</a>
        </div>
        <div class="pending-question">
            <div class="chrono">
                <span id="secondes">--</span><span id="ms">--</span>
                <div class="bar">
                    <div class="inner-bar" id="inner-bar">

                    </div>
                </div>
            </div>
            <div class="question">
                <div class="lbl-question">
                    Which ballet features a battle between gingerbread men soldiers and a Mouse King?
                </div>
                <div class="answers">
                    <div class="row">
                        <div class="prop">
                            <div class="text">Lourd</div>
                            <div class="score">
                                <div class="inner-score"></div>
                            </div>
                        </div>
                        <div class="prop">
                            <div class="text">Zer</div>
                            <div class="score">
                                <div class="inner-score"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="prop">
                            <div class="text">Mille</div>
                            <div class="score">
                                <div class="inner-score"></div>
                            </div>
                        </div>
                        <div class="prop">
                            <div class="text">Toz</div>
                            <div class="score">
                                <div class="inner-score"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="results">
        
            <div class="results-question">
                <div class="stat">
                	<c:if test="${!empty nbReponses}">
                	
                	<c:out value="${nbReponses}">
                	</c:out>
                	</c:if>
                    <h1>345</h1>
                    <h6>personnes ont répondu</h6>
                </div>
                <div class="stat">
                <c:if test="${!empty nbBonnesReponses}">
                	
                	<c:out value="${nbBonnesReponses}">
                	</c:out>
                	</c:if>
                    <h1>90%</h1>
                    <h6>de bonnes réponses</h6>
                </div>
            </div>
            <div class="bread">Résultats globaux</div>

            <div class="global-results">
                <div class="list-leaderboard">
                
                <div class="item">
                <c:if test="${!empty stats}">
                <c:forEach items="${stats}" var = "${node}">
                <div class="index"><c:out value="${node.key}"></div>
                <div class=:nick"><c:out value="${node.value}"></c:out></div>
                </c:out>
                
                </c:forEach>
                </c:if>
                </div>
                
                    <div class="item">
                        <div class="index">1.</div>
                        <div class="nick">Tozman</div>
                        <div class="g-score">3</div>
                    </div>
                    <div class="item">
                        <div class="index">2.</div>
                        <div class="nick">Lourzer</div>
                        <div class="g-score">2</div>

                    </div>
                    <div class="item">
                        <div class="index">3.</div>
                        <div class="nick">Mille</div>
                        <div class="g-score">2</div>

                    </div>
                    <div class="item">
                        <div class="index">4.</div>
                        <div class="nick">salugToz</div>
                        <div class="g-score">0</div>

                    </div>
                </div>
            </div>

        </div>

    </div>
    <script type="text/javascript" src="resources/script/jquery.js"></script>
    <script type="text/javascript" src="resources/script/chrono.js"></script>

</body>

</html>