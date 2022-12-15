**free

ctl-opt dftactgrp(*no);

dcl-pi P125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds T760 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T760 FROM T760 LIMIT 1;

theCharVar = 'Hello from P125';
dsply theCharVar;
callp localProc();
P76();
P123();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P125 in the procedure';
end-proc;