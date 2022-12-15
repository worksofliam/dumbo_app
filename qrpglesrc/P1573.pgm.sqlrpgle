**free

ctl-opt dftactgrp(*no);

dcl-pi P1573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P1573';
dsply theCharVar;
callp localProc();
P84();
P1172();
P1423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1573 in the procedure';
end-proc;