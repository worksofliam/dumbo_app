**free

ctl-opt dftactgrp(*no);

dcl-pi P4681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4020.rpgleinc'
/copy 'qrpgleref/P4382.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds T1076 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1076 FROM T1076 LIMIT 1;

theCharVar = 'Hello from P4681';
dsply theCharVar;
callp localProc();
P4020();
P4382();
P341();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4681 in the procedure';
end-proc;