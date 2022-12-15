**free

ctl-opt dftactgrp(*no);

dcl-pi P1123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'

dcl-ds T223 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T223 FROM T223 LIMIT 1;

theCharVar = 'Hello from P1123';
dsply theCharVar;
callp localProc();
P106();
P409();
P970();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1123 in the procedure';
end-proc;