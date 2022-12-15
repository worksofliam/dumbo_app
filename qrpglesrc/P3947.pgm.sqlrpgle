**free

ctl-opt dftactgrp(*no);

dcl-pi P3947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P3215.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'

dcl-ds T1068 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1068 FROM T1068 LIMIT 1;

theCharVar = 'Hello from P3947';
dsply theCharVar;
callp localProc();
P113();
P3215();
P763();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3947 in the procedure';
end-proc;