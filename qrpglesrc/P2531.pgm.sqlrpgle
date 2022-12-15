**free

ctl-opt dftactgrp(*no);

dcl-pi P2531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P746.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P951.rpgleinc'

dcl-ds theTable extname('T1012') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1012 LIMIT 1;

theCharVar = 'Hello from P2531';
dsply theCharVar;
callp localProc();
P746();
P234();
P951();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2531 in the procedure';
end-proc;