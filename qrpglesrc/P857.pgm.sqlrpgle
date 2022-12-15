**free

ctl-opt dftactgrp(*no);

dcl-pi P857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'

dcl-ds theTable extname('T1811') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1811 LIMIT 1;

theCharVar = 'Hello from P857';
dsply theCharVar;
callp localProc();
P329();
P202();
P814();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P857 in the procedure';
end-proc;