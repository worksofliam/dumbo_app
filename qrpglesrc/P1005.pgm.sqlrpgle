**free

ctl-opt dftactgrp(*no);

dcl-pi P1005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P799.rpgleinc'

dcl-ds T1694 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1694 FROM T1694 LIMIT 1;

theCharVar = 'Hello from P1005';
dsply theCharVar;
callp localProc();
P478();
P352();
P799();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1005 in the procedure';
end-proc;