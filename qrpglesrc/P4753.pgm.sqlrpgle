**free

ctl-opt dftactgrp(*no);

dcl-pi P4753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P2486.rpgleinc'
/copy 'qrpgleref/P1954.rpgleinc'

dcl-ds theTable extname('T1115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1115 LIMIT 1;

theCharVar = 'Hello from P4753';
dsply theCharVar;
callp localProc();
P251();
P2486();
P1954();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4753 in the procedure';
end-proc;