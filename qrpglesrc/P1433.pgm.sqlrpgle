**free

ctl-opt dftactgrp(*no);

dcl-pi P1433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds T1151 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1151 FROM T1151 LIMIT 1;

theCharVar = 'Hello from P1433';
dsply theCharVar;
callp localProc();
P28();
P677();
P402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1433 in the procedure';
end-proc;