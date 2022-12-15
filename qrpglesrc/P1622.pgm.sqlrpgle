**free

ctl-opt dftactgrp(*no);

dcl-pi P1622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1285.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P1238.rpgleinc'

dcl-ds T1226 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1226 FROM T1226 LIMIT 1;

theCharVar = 'Hello from P1622';
dsply theCharVar;
callp localProc();
P1285();
P893();
P1238();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1622 in the procedure';
end-proc;