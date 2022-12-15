**free

ctl-opt dftactgrp(*no);

dcl-pi P1105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'

dcl-ds theTable extname('T285') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T285 LIMIT 1;

theCharVar = 'Hello from P1105';
dsply theCharVar;
callp localProc();
P197();
P703();
P1016();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1105 in the procedure';
end-proc;