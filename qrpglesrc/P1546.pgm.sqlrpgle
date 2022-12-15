**free

ctl-opt dftactgrp(*no);

dcl-pi P1546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1131.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P1363.rpgleinc'

dcl-ds theTable extname('T89') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T89 LIMIT 1;

theCharVar = 'Hello from P1546';
dsply theCharVar;
callp localProc();
P1131();
P835();
P1363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1546 in the procedure';
end-proc;