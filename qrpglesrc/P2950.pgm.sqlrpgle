**free

ctl-opt dftactgrp(*no);

dcl-pi P2950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2057.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'

dcl-ds theTable extname('T1077') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1077 LIMIT 1;

theCharVar = 'Hello from P2950';
dsply theCharVar;
callp localProc();
P2057();
P1220();
P588();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2950 in the procedure';
end-proc;