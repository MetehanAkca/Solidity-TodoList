// SPDX-License-Identifier: UNLICESED
pragma solidity ^0.5.0;

contract TodoList{
	uint public taskCount = 0;
	struct Task {
		uint id;
		string content;
		bool completed;		
	}
	mapping(uint=>Task) tasks;
	
	function createNewTask(string memory _content)public{
		taskCount ++;
		tasks[taskCount] = Task(taskCount,_content,false);
	}

	constructor() public{
		createNewTask("My first Task");
	}
	
}