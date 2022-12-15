**free

ctl-opt dftactgrp(*no);

dcl-pi P338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds T966 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T966 FROM T966 LIMIT 1;

theCharVar = 'Hello from P338';
dsply theCharVar;
callp localProc();
P87();
P296();
P168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P338 in the procedure';
end-proc;