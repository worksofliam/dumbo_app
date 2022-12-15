**free

ctl-opt dftactgrp(*no);

dcl-pi P2118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1519.rpgleinc'
/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P2072.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P2118';
dsply theCharVar;
callp localProc();
P1519();
P1800();
P2072();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2118 in the procedure';
end-proc;