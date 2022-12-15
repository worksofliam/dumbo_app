**free

ctl-opt dftactgrp(*no);

dcl-pi P1445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds T287 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T287 FROM T287 LIMIT 1;

theCharVar = 'Hello from P1445';
dsply theCharVar;
callp localProc();
P431();
P957();
P211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1445 in the procedure';
end-proc;