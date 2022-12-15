**free

ctl-opt dftactgrp(*no);

dcl-pi P3246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P996.rpgleinc'

dcl-ds T354 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T354 FROM T354 LIMIT 1;

theCharVar = 'Hello from P3246';
dsply theCharVar;
callp localProc();
P474();
P417();
P996();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3246 in the procedure';
end-proc;