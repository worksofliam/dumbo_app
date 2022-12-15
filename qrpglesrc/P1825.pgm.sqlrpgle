**free

ctl-opt dftactgrp(*no);

dcl-pi P1825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1588.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P1818.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P1825';
dsply theCharVar;
callp localProc();
P1588();
P56();
P1818();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1825 in the procedure';
end-proc;