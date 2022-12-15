**free

ctl-opt dftactgrp(*no);

dcl-pi P1523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds T193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T193 FROM T193 LIMIT 1;

theCharVar = 'Hello from P1523';
dsply theCharVar;
callp localProc();
P4();
P923();
P265();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1523 in the procedure';
end-proc;