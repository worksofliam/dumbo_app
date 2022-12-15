**free

ctl-opt dftactgrp(*no);

dcl-pi P3246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2765.rpgleinc'
/copy 'qrpgleref/P1563.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds T998 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T998 FROM T998 LIMIT 1;

theCharVar = 'Hello from P3246';
dsply theCharVar;
callp localProc();
P2765();
P1563();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3246 in the procedure';
end-proc;