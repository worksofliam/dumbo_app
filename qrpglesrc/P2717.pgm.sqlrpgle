**free

ctl-opt dftactgrp(*no);

dcl-pi P2717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P982.rpgleinc'

dcl-ds T652 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T652 FROM T652 LIMIT 1;

theCharVar = 'Hello from P2717';
dsply theCharVar;
callp localProc();
P265();
P561();
P982();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2717 in the procedure';
end-proc;