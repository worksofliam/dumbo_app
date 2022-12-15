**free

ctl-opt dftactgrp(*no);

dcl-pi P5423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4573.rpgleinc'
/copy 'qrpgleref/P4867.rpgleinc'
/copy 'qrpgleref/P2389.rpgleinc'

dcl-ds T1115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1115 FROM T1115 LIMIT 1;

theCharVar = 'Hello from P5423';
dsply theCharVar;
callp localProc();
P4573();
P4867();
P2389();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5423 in the procedure';
end-proc;