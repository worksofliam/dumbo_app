**free

ctl-opt dftactgrp(*no);

dcl-pi P2636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1133.rpgleinc'
/copy 'qrpgleref/P2308.rpgleinc'
/copy 'qrpgleref/P2380.rpgleinc'

dcl-ds theTable extname('T792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T792 LIMIT 1;

theCharVar = 'Hello from P2636';
dsply theCharVar;
callp localProc();
P1133();
P2308();
P2380();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2636 in the procedure';
end-proc;