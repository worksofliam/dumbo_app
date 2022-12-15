**free

ctl-opt dftactgrp(*no);

dcl-pi P2112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P1496.rpgleinc'
/copy 'qrpgleref/P1413.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P2112';
dsply theCharVar;
callp localProc();
P817();
P1496();
P1413();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2112 in the procedure';
end-proc;