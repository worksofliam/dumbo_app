**free

ctl-opt dftactgrp(*no);

dcl-pi P3204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P1437.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'

dcl-ds theTable extname('T300') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T300 LIMIT 1;

theCharVar = 'Hello from P3204';
dsply theCharVar;
callp localProc();
P178();
P1437();
P1505();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3204 in the procedure';
end-proc;