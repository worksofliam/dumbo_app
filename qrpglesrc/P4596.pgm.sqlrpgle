**free

ctl-opt dftactgrp(*no);

dcl-pi P4596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4078.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T1226 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1226 FROM T1226 LIMIT 1;

theCharVar = 'Hello from P4596';
dsply theCharVar;
callp localProc();
P4078();
P1402();
P640();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4596 in the procedure';
end-proc;