<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Json Apis.is</title>
	<link rel="stylesheet" type="text/css" href="static/styles.css">
</head>
<body>
	<div class="row">
		<h2>Söluaðilar eldsneytis</h2>

			<%
			minpriceP = 2000.0
			minpriceD = 2000.0

			 l = len(data['results'])
			 	c = 0
			 	for i in range(l-1):
				c = i
				
					if minpriceP > data['results'][i]['bensin95']:
					minpriceP = data['results'][i]['bensin95']
					companyP = data['results'][i]['company']
				end
					if minpriceD > data['results'][i]['diesel']:
					minpriceD = data['results'][i]['diesel']
					companyD = data['results'][i]['company']
				end

				
				if (data['results'][i]['company']) != (data['results'][i+1]['company']):
			%>

			 <div class="box"><a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a></div>
			 <%
			 	end
			 	end
			%> 
			<div class="box"><a href="/company/{{data['results'][c+1]['company']}}">{{data['results'][c+1]['company']}}</a></div>
	</div>
</body>
</html>