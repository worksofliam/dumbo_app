**free

ctl-opt dftactgrp(*no);

dcl-pi P2661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P1647.rpgleinc'
/copy 'qrpgleref/P1134.rpgleinc'

dcl-ds theTable extname('T760') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T760 LIMIT 1;

theCharVar = 'Hello from P2661';
dsply theCharVar;
callp localProc();
P1055();
P1647();
P1134();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2661 in the procedure';
end-proc;