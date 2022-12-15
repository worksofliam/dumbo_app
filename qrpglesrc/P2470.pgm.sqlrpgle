**free

ctl-opt dftactgrp(*no);

dcl-pi P2470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P634.rpgleinc'
/copy 'qrpgleref/P1351.rpgleinc'

dcl-ds theTable extname('T1568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1568 LIMIT 1;

theCharVar = 'Hello from P2470';
dsply theCharVar;
callp localProc();
P856();
P634();
P1351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2470 in the procedure';
end-proc;