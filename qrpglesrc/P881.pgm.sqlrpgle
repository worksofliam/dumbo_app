**free

ctl-opt dftactgrp(*no);

dcl-pi P881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds T1362 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1362 FROM T1362 LIMIT 1;

theCharVar = 'Hello from P881';
dsply theCharVar;
callp localProc();
P93();
P790();
P95();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P881 in the procedure';
end-proc;