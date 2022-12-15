**free

ctl-opt dftactgrp(*no);

dcl-pi P784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T533') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T533 LIMIT 1;

theCharVar = 'Hello from P784';
dsply theCharVar;
callp localProc();
P454();
P529();
P604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P784 in the procedure';
end-proc;