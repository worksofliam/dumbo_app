**free

ctl-opt dftactgrp(*no);

dcl-pi P2595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds theTable extname('T476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T476 LIMIT 1;

theCharVar = 'Hello from P2595';
dsply theCharVar;
callp localProc();
P212();
P127();
P222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2595 in the procedure';
end-proc;