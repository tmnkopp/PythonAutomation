
[HttpGet("~cq~/{agency}")] 
public List<Dictionary<string, object>> ~cq~(~args~ string agency = "GSA")
{ 
    var request = new SprocRequest("cq_~cq~");
    ~parms~ 

    var dt = _dbUtils.GetDataTable(request);
    var json = JsonConvert.SerializeObject(dt);
    var deser = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(json); 
    return deser;
}
