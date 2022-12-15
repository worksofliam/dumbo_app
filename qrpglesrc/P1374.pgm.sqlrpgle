**free

ctl-opt dftactgrp(*no);

dcl-pi P1374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P726.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'

dcl-ds theTable extname('T384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T384 LIMIT 1;

theCharVar = 'Hello from P1374';
dsply theCharVar;
callp localProc();
P108();
P726();
P201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1374 in the procedure';
end-proc;