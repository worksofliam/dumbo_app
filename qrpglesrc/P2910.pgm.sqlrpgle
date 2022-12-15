**free

ctl-opt dftactgrp(*no);

dcl-pi P2910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P1906.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'

dcl-ds theTable extname('T738') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T738 LIMIT 1;

theCharVar = 'Hello from P2910';
dsply theCharVar;
callp localProc();
P1184();
P1906();
P1677();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2910 in the procedure';
end-proc;