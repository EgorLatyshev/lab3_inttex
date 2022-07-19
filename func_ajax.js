var ajax = new XMLHttpRequest();

function getText() {

    ajax.onreadystatechange = function() {
        if (ajax.readyState === 4) {
            if (ajax.status === 200) {
                console.dir(ajax.responseText);
                document.getElementById("res").innerHTML = ajax.response;
            }
        }
    }
    ajax.open("get", "list_computers_on_cpu.php?comp_cpu=" + document.getElementById("comp_cpu").value);
    ajax.send();
}


function getXML() {
    ajax.onreadystatechange = function() {
        if (ajax.readyState === 4) {
            if (ajax.status === 200) {

                console.dir(ajax);
                let rows = ajax.responseXML.firstChild.children;
                let result = "<table border ='1'>";
                result = result + "<tr><th>Netname</th><th>Motherboard</th><th>RAM_capacity</th><th>HDD_capacity</th><th>Monitor</th><th>Vendor</th><th>Guarantee</th></tr>";
                for (var i = 0; i < rows.length; i++) {
                    result += "<tr>";
                    result += "<td>" + rows[i].children[0].firstChild.nodeValue + "</td>";
                    result += "<td>" + rows[i].children[1].firstChild.nodeValue + "</td>";
                    result += "<td>" + rows[i].children[2].firstChild.nodeValue + "</td>";
                    result += "<td>" + rows[i].children[3].firstChild.nodeValue + "</td>";
                    result += "<td>" + rows[i].children[4].firstChild.nodeValue + "</td>";
                    result += "<td>" + rows[i].children[5].firstChild.nodeValue + "</td>";
                    result += "<td>" + rows[i].children[6].firstChild.nodeValue + "</td>";
                    result += "</tr>";
                }
          
                document.getElementById("res").innerHTML = result;
            }
        }
    }
    ajax.open("get", "list_computers_on_soft.php?soft=" + document.getElementById("soft").value);
    ajax.send();
}


function getJSON() {
    ajax.onreadystatechange = function(){
        let rows = JSON.parse(ajax.responseText);
    console.dir(rows);
    if (ajax.readyState === 4) {
        if (ajax.status === 200) {
            console.dir(ajax);
            let result = "<table border ='1'>";
            result = result + "<tr><th>Netname</th><th>Motherboard</th><th>RAM_capacity</th><th>HDD_capacity</th><th>Monitor</th><th>Vendor</th><th>Guarantee</th></tr>";
            for (var i = 0; i < rows.length; i++) {
                result += "<tr>";
                result += "<td>" + rows[i].netname + "</td>";
                result += "<td>" + rows[i].motherboard + "</td>";
                result += "<td>" + rows[i].RAM_capacity + "</td>";
                result += "<td>" + rows[i].HDD_capacity + "</td>";
                result += "<td>" + rows[i].monitor + "</td>";
                result += "<td>" + rows[i].vendor + "</td>";
                result += "<td>" + rows[i].guarantee + "</td>";
                result += "</tr>";
            }
            document.getElementById("res").innerHTML = result;
        }
    }
    };
    ajax.open("get", "out_of_warranty.php?warranty=" + document.getElementById("warranty").value);
    ajax.send();
}