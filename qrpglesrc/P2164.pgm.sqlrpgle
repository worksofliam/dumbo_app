**free

ctl-opt dftactgrp(*no);

dcl-pi P2164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1743.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'
/copy 'qrpgleref/P1540.rpgleinc'

dcl-ds theTable extname('T1651') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1651 LIMIT 1;

theCharVar = 'Hello from P2164';
dsply theCharVar;
callp localProc();
P1743();
P1300();
P1540();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2164 in the procedure';
end-proc;