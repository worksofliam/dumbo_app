**free

ctl-opt dftactgrp(*no);

dcl-pi P5114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2163.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds T924 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T924 FROM T924 LIMIT 1;

theCharVar = 'Hello from P5114';
dsply theCharVar;
callp localProc();
P2163();
P408();
P99();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5114 in the procedure';
end-proc;