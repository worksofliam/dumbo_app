**free

ctl-opt dftactgrp(*no);

dcl-pi P341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds T369 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T369 FROM T369 LIMIT 1;

theCharVar = 'Hello from P341';
dsply theCharVar;
callp localProc();
P72();
P332();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P341 in the procedure';
end-proc;