$ ->
  $("#address_zipcode").jpostal({
    postcode : [ "#address_zipcode" ],
    address  : {
                  "#address_prefecture_name" : "%3",
                  "#address_city"            : "%4%5",
                  "#address_street"          : "%6%7"
                }
  })
