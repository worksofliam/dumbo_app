**free

ctl-opt dftactgrp(*no);

dcl-pi P2449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P814.rpgleinc'
/copy 'qrpgleref/P2374.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P2449';
dsply theCharVar;
callp localProc();
P814();
P2374();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2449 in the procedure';
end-proc;