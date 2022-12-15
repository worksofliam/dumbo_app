**free

ctl-opt dftactgrp(*no);

dcl-pi P3544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3405.rpgleinc'
/copy 'qrpgleref/P1476.rpgleinc'
/copy 'qrpgleref/P1331.rpgleinc'

dcl-ds theTable extname('T884') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T884 LIMIT 1;

theCharVar = 'Hello from P3544';
dsply theCharVar;
callp localProc();
P3405();
P1476();
P1331();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3544 in the procedure';
end-proc;