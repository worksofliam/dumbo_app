**free

ctl-opt dftactgrp(*no);

dcl-pi P4714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4540.rpgleinc'
/copy 'qrpgleref/P2893.rpgleinc'
/copy 'qrpgleref/P4572.rpgleinc'

dcl-ds T1235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1235 FROM T1235 LIMIT 1;

theCharVar = 'Hello from P4714';
dsply theCharVar;
callp localProc();
P4540();
P2893();
P4572();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4714 in the procedure';
end-proc;