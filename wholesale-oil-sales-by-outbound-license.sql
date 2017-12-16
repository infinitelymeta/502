select 
	biotrackthc_locations.name as 'Retailer',
	biotrackthc_inventorytransfers.Strain,
	biotrackthc_inventorytransfers.description,
	biotrackthc_inventorytransfers.weight, 
	biotrackthc_inventorytransfers.saleprice, 
	biotrackthc_inventorytransfers.unitprice,
	biotrackthc_inventorytransfers.inbound_license,
	biotrackthc_inventorytransfers.outbound_license
from biotrackthc_inventorytransfers	
inner join biotrackthc_locations on 
	biotrackthc_inventorytransfers.inbound_license=biotrackthc_locations.licensenum
where biotrackthc_inventorytransfers.inventorytype="24" and 
biotrackthc_inventorytransfers.outbound_license ="412882"
order by cast(biotrackthc_inventorytransfers.unitprice as integer) desc;
