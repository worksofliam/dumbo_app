**free

ctl-opt dftactgrp(*no);

dcl-pi P2646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2002.rpgleinc'
/copy 'qrpgleref/P2361.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'

dcl-ds theTable extname('T373') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T373 LIMIT 1;

theCharVar = 'Hello from P2646';
dsply theCharVar;
callp localProc();
P2002();
P2361();
P1033();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2646 in the procedure';
end-proc;