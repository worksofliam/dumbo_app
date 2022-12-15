**free

ctl-opt dftactgrp(*no);

dcl-pi P4558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3374.rpgleinc'
/copy 'qrpgleref/P3803.rpgleinc'
/copy 'qrpgleref/P1087.rpgleinc'

dcl-ds T1733 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1733 FROM T1733 LIMIT 1;

theCharVar = 'Hello from P4558';
dsply theCharVar;
callp localProc();
P3374();
P3803();
P1087();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4558 in the procedure';
end-proc;