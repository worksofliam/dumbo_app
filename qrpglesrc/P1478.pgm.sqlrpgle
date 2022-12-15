**free

ctl-opt dftactgrp(*no);

dcl-pi P1478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'

dcl-ds theTable extname('T39') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T39 LIMIT 1;

theCharVar = 'Hello from P1478';
dsply theCharVar;
callp localProc();
P971();
P56();
P626();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1478 in the procedure';
end-proc;