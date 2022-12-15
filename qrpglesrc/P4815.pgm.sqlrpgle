**free

ctl-opt dftactgrp(*no);

dcl-pi P4815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P1898.rpgleinc'
/copy 'qrpgleref/P3263.rpgleinc'

dcl-ds theTable extname('T1299') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1299 LIMIT 1;

theCharVar = 'Hello from P4815';
dsply theCharVar;
callp localProc();
P839();
P1898();
P3263();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4815 in the procedure';
end-proc;