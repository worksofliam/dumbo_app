**free

ctl-opt dftactgrp(*no);

dcl-pi P2341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P2161.rpgleinc'
/copy 'qrpgleref/P1308.rpgleinc'

dcl-ds theTable extname('T1700') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1700 LIMIT 1;

theCharVar = 'Hello from P2341';
dsply theCharVar;
callp localProc();
P598();
P2161();
P1308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2341 in the procedure';
end-proc;