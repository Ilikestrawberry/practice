?state
state.abb
state.area
state.name
state.region

us.state <- data.frame(state.abb, state.name,
                       state.region, state.area,
                       stringsAsFactors = FALSE)
us.state
str(us.state)

us.state[[1]]
str(us.state[[1]])

us.state[2]
str(us.state[2])
us.state[c(2,4)]
us.state[,2]
us.state[1,2]
us.state[1,2,drop=FALSE] ## drop=false->형태그대로추출
us.state[,c(2,4)]

us.state$state.name ## = us.state[["state.name"]]
us.state[,"state.name"]
us.state[c("state.name","state.area")] ##list 방식 추출
us.state[,c("state.name","state.area")] ##matrix 방식

state.x77
str(state.x77)
head(state.x77)

states <- data.frame(state.x77)
str(states)
row.names(states)
states$Name <- row.names(states)
row.names(states) <- NULL
head(states)

rich.states <- states[states$Income > 5000, 
                      c("Name", "Income")]
rich.states

large.states <- states[states$Area > 100000, 
                      c("Area", "Name")]
large.states

merge(rich.states, large.states) ## 공통으로 존재하는 행만 all=FALSE(교집합)
merge(rich.states, large.states, all=TRUE)
merge(rich.states, large.states, all.x=TRUE)

