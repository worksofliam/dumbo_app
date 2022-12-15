**free

ctl-opt dftactgrp(*no);

dcl-pi P829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'

dcl-ds theTable extname('T757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T757 LIMIT 1;

theCharVar = 'Hello from P829';
dsply theCharVar;
callp localProc();
P45();
P382();
P219();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P829 in the procedure';
end-proc;