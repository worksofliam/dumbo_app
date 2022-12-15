**free

ctl-opt dftactgrp(*no);

dcl-pi P402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds T98 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T98 FROM T98 LIMIT 1;

theCharVar = 'Hello from P402';
dsply theCharVar;
callp localProc();
P5();
P182();
P293();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P402 in the procedure';
end-proc;