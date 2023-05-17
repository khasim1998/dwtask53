%dw 2.0
output application/json
// Here i used map twice to map the given payload as of my output Requirement basically map what will do is it is used to Transforming every item in an Array
---
payload map (item, index) ->{ 
    //here i used to add index with +1 based on the o/p requirement
    id: index+1,
    name: item.name,
    jobs: item.jobs map ((item0,index0) -> {num:index0+1} ++ item0)
}