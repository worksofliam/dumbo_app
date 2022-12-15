**free

ctl-opt dftactgrp(*no);

dcl-pi P208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds T467 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T467 FROM T467 LIMIT 1;

theCharVar = 'Hello from P208';
dsply theCharVar;
callp localProc();
P111();
P142();
P32();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P208 in the procedure';
end-proc;