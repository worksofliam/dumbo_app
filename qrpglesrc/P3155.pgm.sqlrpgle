**free

ctl-opt dftactgrp(*no);

dcl-pi P3155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1420.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P2453.rpgleinc'

dcl-ds theTable extname('T526') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T526 LIMIT 1;

theCharVar = 'Hello from P3155';
dsply theCharVar;
callp localProc();
P1420();
P1387();
P2453();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3155 in the procedure';
end-proc;