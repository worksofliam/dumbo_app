**free

ctl-opt dftactgrp(*no);

dcl-pi P5248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4799.rpgleinc'
/copy 'qrpgleref/P3120.rpgleinc'
/copy 'qrpgleref/P2331.rpgleinc'

dcl-ds theTable extname('T1200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1200 LIMIT 1;

theCharVar = 'Hello from P5248';
dsply theCharVar;
callp localProc();
P4799();
P3120();
P2331();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5248 in the procedure';
end-proc;