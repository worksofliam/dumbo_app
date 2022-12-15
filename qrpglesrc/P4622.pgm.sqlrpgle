**free

ctl-opt dftactgrp(*no);

dcl-pi P4622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3948.rpgleinc'
/copy 'qrpgleref/P4530.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'

dcl-ds T1332 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1332 FROM T1332 LIMIT 1;

theCharVar = 'Hello from P4622';
dsply theCharVar;
callp localProc();
P3948();
P4530();
P983();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4622 in the procedure';
end-proc;