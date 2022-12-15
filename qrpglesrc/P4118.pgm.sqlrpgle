**free

ctl-opt dftactgrp(*no);

dcl-pi P4118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P2727.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T108 LIMIT 1;

theCharVar = 'Hello from P4118';
dsply theCharVar;
callp localProc();
P1091();
P2727();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4118 in the procedure';
end-proc;