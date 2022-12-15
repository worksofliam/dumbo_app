**free

ctl-opt dftactgrp(*no);

dcl-pi P426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds T782 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T782 FROM T782 LIMIT 1;

theCharVar = 'Hello from P426';
dsply theCharVar;
callp localProc();
P219();
P61();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P426 in the procedure';
end-proc;