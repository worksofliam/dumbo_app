**free

ctl-opt dftactgrp(*no);

dcl-pi P2648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'

dcl-ds theTable extname('T1065') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1065 LIMIT 1;

theCharVar = 'Hello from P2648';
dsply theCharVar;
callp localProc();
P796();
P825();
P962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2648 in the procedure';
end-proc;