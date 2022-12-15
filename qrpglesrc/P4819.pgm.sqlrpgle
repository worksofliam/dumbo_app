**free

ctl-opt dftactgrp(*no);

dcl-pi P4819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1238.rpgleinc'
/copy 'qrpgleref/P2053.rpgleinc'
/copy 'qrpgleref/P3075.rpgleinc'

dcl-ds theTable extname('T1828') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1828 LIMIT 1;

theCharVar = 'Hello from P4819';
dsply theCharVar;
callp localProc();
P1238();
P2053();
P3075();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4819 in the procedure';
end-proc;