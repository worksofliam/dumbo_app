**free

ctl-opt dftactgrp(*no);

dcl-pi P962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P962';
dsply theCharVar;
callp localProc();
P289();
P76();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P962 in the procedure';
end-proc;