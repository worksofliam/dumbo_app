**free

ctl-opt dftactgrp(*no);

dcl-pi P4756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1514.rpgleinc'
/copy 'qrpgleref/P2541.rpgleinc'
/copy 'qrpgleref/P3002.rpgleinc'

dcl-ds theTable extname('T1024') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1024 LIMIT 1;

theCharVar = 'Hello from P4756';
dsply theCharVar;
callp localProc();
P1514();
P2541();
P3002();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4756 in the procedure';
end-proc;