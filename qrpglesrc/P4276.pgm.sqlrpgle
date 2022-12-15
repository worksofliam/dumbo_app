**free

ctl-opt dftactgrp(*no);

dcl-pi P4276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P3731.rpgleinc'
/copy 'qrpgleref/P2112.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P4276';
dsply theCharVar;
callp localProc();
P514();
P3731();
P2112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4276 in the procedure';
end-proc;