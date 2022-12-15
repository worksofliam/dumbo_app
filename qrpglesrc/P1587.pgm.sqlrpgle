**free

ctl-opt dftactgrp(*no);

dcl-pi P1587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P1374.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'

dcl-ds T404 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T404 FROM T404 LIMIT 1;

theCharVar = 'Hello from P1587';
dsply theCharVar;
callp localProc();
P68();
P1374();
P1472();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1587 in the procedure';
end-proc;