**free

ctl-opt dftactgrp(*no);

dcl-pi P3628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2923.rpgleinc'
/copy 'qrpgleref/P2921.rpgleinc'
/copy 'qrpgleref/P1655.rpgleinc'

dcl-ds T807 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T807 FROM T807 LIMIT 1;

theCharVar = 'Hello from P3628';
dsply theCharVar;
callp localProc();
P2923();
P2921();
P1655();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3628 in the procedure';
end-proc;