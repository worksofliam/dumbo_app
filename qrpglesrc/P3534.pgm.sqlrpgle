**free

ctl-opt dftactgrp(*no);

dcl-pi P3534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P2427.rpgleinc'

dcl-ds theTable extname('T1639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1639 LIMIT 1;

theCharVar = 'Hello from P3534';
dsply theCharVar;
callp localProc();
P32();
P2();
P2427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3534 in the procedure';
end-proc;