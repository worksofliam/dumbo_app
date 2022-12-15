**free

ctl-opt dftactgrp(*no);

dcl-pi P4967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P2886.rpgleinc'
/copy 'qrpgleref/P1244.rpgleinc'

dcl-ds theTable extname('T1804') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1804 LIMIT 1;

theCharVar = 'Hello from P4967';
dsply theCharVar;
callp localProc();
P381();
P2886();
P1244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4967 in the procedure';
end-proc;