pragma solidity ^0.5.0;

contract TodoList {
    uint16 public taskCount;

    struct Task {
        string taskName;
        bool isCompleted;
    }

    mapping(uint16 => Task) public todos;

    event TaskCreated(string task, uint16 taskNumber);

    constructor() public {
        todos[0] = Task("test", true);
        taskCount = 1;
    }

    function createTask(string storage _taskName) public {
        todos[taskCount++] = Task(_taskName, false);

        emit TaskCreated(_taskName, taskCount - 1);
    }
}