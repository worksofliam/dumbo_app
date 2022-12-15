**free

ctl-opt dftactgrp(*no);

dcl-pi P32;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds T197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T197 FROM T197 LIMIT 1;

theCharVar = 'Hello from P32';
dsply theCharVar;
callp localProc();
P13();
P17();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P32 in the procedure';
end-proc;