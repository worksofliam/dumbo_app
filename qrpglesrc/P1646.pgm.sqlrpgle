**free

ctl-opt dftactgrp(*no);

dcl-pi P1646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P1355.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'

dcl-ds theTable extname('T585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T585 LIMIT 1;

theCharVar = 'Hello from P1646';
dsply theCharVar;
callp localProc();
P606();
P1355();
P1499();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1646 in the procedure';
end-proc;