**free

ctl-opt dftactgrp(*no);

dcl-pi P1612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1105.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P1446.rpgleinc'

dcl-ds theTable extname('T573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T573 LIMIT 1;

theCharVar = 'Hello from P1612';
dsply theCharVar;
callp localProc();
P1105();
P496();
P1446();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1612 in the procedure';
end-proc;