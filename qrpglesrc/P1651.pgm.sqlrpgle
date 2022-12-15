**free

ctl-opt dftactgrp(*no);

dcl-pi P1651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1101.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'

dcl-ds theTable extname('T1192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1192 LIMIT 1;

theCharVar = 'Hello from P1651';
dsply theCharVar;
callp localProc();
P1101();
P230();
P1192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1651 in the procedure';
end-proc;