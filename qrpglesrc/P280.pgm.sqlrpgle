**free

ctl-opt dftactgrp(*no);

dcl-pi P280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P280';
dsply theCharVar;
callp localProc();
P56();
P240();
P271();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P280 in the procedure';
end-proc;