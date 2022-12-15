**free

ctl-opt dftactgrp(*no);

dcl-pi P608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds T553 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T553 FROM T553 LIMIT 1;

theCharVar = 'Hello from P608';
dsply theCharVar;
callp localProc();
P68();
P499();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P608 in the procedure';
end-proc;