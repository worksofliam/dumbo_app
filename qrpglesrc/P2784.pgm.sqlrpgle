**free

ctl-opt dftactgrp(*no);

dcl-pi P2784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2401.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P2374.rpgleinc'

dcl-ds theTable extname('T984') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T984 LIMIT 1;

theCharVar = 'Hello from P2784';
dsply theCharVar;
callp localProc();
P2401();
P552();
P2374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2784 in the procedure';
end-proc;