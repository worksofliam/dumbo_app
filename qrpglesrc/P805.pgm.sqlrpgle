**free

ctl-opt dftactgrp(*no);

dcl-pi P805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds theTable extname('T471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T471 LIMIT 1;

theCharVar = 'Hello from P805';
dsply theCharVar;
callp localProc();
P310();
P170();
P302();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P805 in the procedure';
end-proc;