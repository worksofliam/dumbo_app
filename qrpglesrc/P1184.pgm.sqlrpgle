**free

ctl-opt dftactgrp(*no);

dcl-pi P1184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'

dcl-ds T304 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T304 FROM T304 LIMIT 1;

theCharVar = 'Hello from P1184';
dsply theCharVar;
callp localProc();
P463();
P253();
P665();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1184 in the procedure';
end-proc;