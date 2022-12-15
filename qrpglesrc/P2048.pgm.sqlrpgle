**free

ctl-opt dftactgrp(*no);

dcl-pi P2048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1560.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'

dcl-ds theTable extname('T550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T550 LIMIT 1;

theCharVar = 'Hello from P2048';
dsply theCharVar;
callp localProc();
P1560();
P181();
P309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2048 in the procedure';
end-proc;