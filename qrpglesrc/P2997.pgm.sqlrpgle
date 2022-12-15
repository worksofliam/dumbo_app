**free

ctl-opt dftactgrp(*no);

dcl-pi P2997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1099.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds theTable extname('T1747') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1747 LIMIT 1;

theCharVar = 'Hello from P2997';
dsply theCharVar;
callp localProc();
P1099();
P714();
P596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2997 in the procedure';
end-proc;