**free

ctl-opt dftactgrp(*no);

dcl-pi P1293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'

dcl-ds theTable extname('T711') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T711 LIMIT 1;

theCharVar = 'Hello from P1293';
dsply theCharVar;
callp localProc();
P284();
P236();
P332();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1293 in the procedure';
end-proc;