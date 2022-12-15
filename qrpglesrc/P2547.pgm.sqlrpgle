**free

ctl-opt dftactgrp(*no);

dcl-pi P2547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P1165.rpgleinc'

dcl-ds theTable extname('T591') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T591 LIMIT 1;

theCharVar = 'Hello from P2547';
dsply theCharVar;
callp localProc();
P159();
P147();
P1165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2547 in the procedure';
end-proc;