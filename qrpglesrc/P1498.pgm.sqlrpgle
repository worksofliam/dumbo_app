**free

ctl-opt dftactgrp(*no);

dcl-pi P1498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P1087.rpgleinc'
/copy 'qrpgleref/P1366.rpgleinc'

dcl-ds theTable extname('T798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T798 LIMIT 1;

theCharVar = 'Hello from P1498';
dsply theCharVar;
callp localProc();
P102();
P1087();
P1366();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1498 in the procedure';
end-proc;