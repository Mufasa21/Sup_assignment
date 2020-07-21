# Function for inputing the tables and blocks
function firstState()
    #ask for the no. of  tables
    print("Please input the number of tables : ")
    t = chomp(readline())
    global num_tables = parse(Int, t)
    #Collection to store tables in array
    global tableCollection = Array{String}(undef, num_tables)
    for i ∈ 1:num_tables #

        println()
        print("Enter Table $i : ")
        tableCollection[i] = chomp(readline()) #ask for the no. of tables 
        println()  
    end
    print("Input the number of Blocks: ")
    blc = chomp(readline())
    global block_num = parse(Int, blc)
    global coll_blocks = Array{String}(undef, block_num)
    for i ∈ 1:block_num 
        println()
        print("Enter Block  $i  : ")
        coll_blocks[i] = chomp(readline()) #blocks
        
    end
    #return tableCollection and the coll_blocks
    println("!!!!!!!!!!!Output here!!!!!!!!!!!!!!")
    println("First state of configuration for the blocks ")

    for i ∈ 1:block_num
        println(coll_blocks[i])

    end
    println("")


    println("The no. of tables are:")

    for i ∈ 1:num_tables
        println(tableCollection[i])

    end

    println("")

    println("The Goal state is:")

    goalState = sort!(coll_blocks)# sorts them in order
    print(goalState)
    println("End")
end
firstState()

function Finalgoal()
    for i ∈ 1:block_num
        coll_blocks
    end
    
end

function BF_search(firstState,goalState)#breadth first funct to search the 
    Queue=[]
    num_NewNodes = 0 #Expanded nodes
    push!(firstState,Queue)
   
    while Queue
        realState = Queue.pop(0)

        
        if Finalgoal(goalState,realState)

            
            return num_NewNodes,realState
        end
        num_NewNodes = num_NewNodes + 1
        FreshState = realState.getNewState()
        for newSate in FreshState
            Queue.append(newSate)
            newSate.prevState = realState
            newSate.depth = realState.depth + 1
        end
        return -1,-1

    end

end

