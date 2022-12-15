**free

ctl-opt dftactgrp(*no);

dcl-pi P2484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1728.rpgleinc'
/copy 'qrpgleref/P2446.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'

dcl-ds theTable extname('T1191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1191 LIMIT 1;

theCharVar = 'Hello from P2484';
dsply theCharVar;
callp localProc();
P1728();
P2446();
P349();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2484 in the procedure';
end-proc;