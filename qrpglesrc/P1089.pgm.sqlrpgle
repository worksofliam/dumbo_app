**free

ctl-opt dftactgrp(*no);

dcl-pi P1089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds T374 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T374 FROM T374 LIMIT 1;

theCharVar = 'Hello from P1089';
dsply theCharVar;
callp localProc();
P783();
P471();
P1032();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1089 in the procedure';
end-proc;