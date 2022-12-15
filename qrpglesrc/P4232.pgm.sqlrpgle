**free

ctl-opt dftactgrp(*no);

dcl-pi P4232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2845.rpgleinc'
/copy 'qrpgleref/P1717.rpgleinc'
/copy 'qrpgleref/P3434.rpgleinc'

dcl-ds theTable extname('T1202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1202 LIMIT 1;

theCharVar = 'Hello from P4232';
dsply theCharVar;
callp localProc();
P2845();
P1717();
P3434();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4232 in the procedure';
end-proc;