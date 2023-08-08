<%@ Control Language="C#" AutoEventWireup="true"  %>

	

<script>
		var oldTables = document.body.getElementsByTagName("table");
		var newDiv = document.createElement("div");
		document.body.insertBefore(newDiv, null);

		var oldTablesArray= Array.prototype.slice.call(oldTables); 

		for (var k = 0; k < oldTablesArray.length; k++) {
			var oldTable = oldTablesArray[k];

			//var aaa = document.getElementById("aaa");
			var aaa = newDiv;

			var table = document.createElement("table");

			aaa.appendChild(table);

			for (var i = 0; i < oldTable.rows.length; i++) {
				var row = document.createElement(oldTable.rows[i].tagName);

				table.appendChild(
					row
				);

				for (var j = 0; j < oldTable.rows[i].cells.length; j++) {
					var cell = document.createElement(oldTable.rows[i].cells[j].tagName);
					if (
						Number(oldTable.rows[i].cells[j].getAttribute("colspan"))
						&&
						Number(oldTable.rows[i].cells[j].getAttribute("colspan")) !== 1
					) {

						cell.setAttribute("colspan", oldTable.rows[i].cells[j].getAttribute("colspan"));

					}

					if (
						Number(
							oldTable.rows[i].cells[j].getAttribute("rowspan")
						) 
						&&
						Number(
							oldTable.rows[i].cells[j].getAttribute("rowspan")
						) !== 1
					) {

						cell.setAttribute("rowspan", oldTable.rows[i].cells[j].getAttribute("rowspan"));


					}

					cell.textContent = oldTable.rows[i].cells[j].textContent;
					row.appendChild(cell);
				}
			}
		}
	</script>