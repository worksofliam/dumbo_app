**free

ctl-opt dftactgrp(*no);

dcl-pi P4788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2672.rpgleinc'
/copy 'qrpgleref/P2809.rpgleinc'
/copy 'qrpgleref/P1666.rpgleinc'

dcl-ds theTable extname('T1204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1204 LIMIT 1;

theCharVar = 'Hello from P4788';
dsply theCharVar;
callp localProc();
P2672();
P2809();
P1666();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4788 in the procedure';
end-proc;