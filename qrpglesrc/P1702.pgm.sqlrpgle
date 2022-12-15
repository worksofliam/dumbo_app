**free

ctl-opt dftactgrp(*no);

dcl-pi P1702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1610.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P999.rpgleinc'

dcl-ds T435 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T435 FROM T435 LIMIT 1;

theCharVar = 'Hello from P1702';
dsply theCharVar;
callp localProc();
P1610();
P761();
P999();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1702 in the procedure';
end-proc;