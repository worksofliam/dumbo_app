**free

ctl-opt dftactgrp(*no);

dcl-pi P3729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P1366.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'

dcl-ds T1410 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1410 FROM T1410 LIMIT 1;

theCharVar = 'Hello from P3729';
dsply theCharVar;
callp localProc();
P508();
P1366();
P1733();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3729 in the procedure';
end-proc;