**free

ctl-opt dftactgrp(*no);

dcl-pi P123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds T302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T302 FROM T302 LIMIT 1;

theCharVar = 'Hello from P123';
dsply theCharVar;
callp localProc();
P49();
P33();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P123 in the procedure';
end-proc;