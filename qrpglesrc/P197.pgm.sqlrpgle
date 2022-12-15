**free

ctl-opt dftactgrp(*no);

dcl-pi P197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds T426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T426 FROM T426 LIMIT 1;

theCharVar = 'Hello from P197';
dsply theCharVar;
callp localProc();
P127();
P91();
P70();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P197 in the procedure';
end-proc;