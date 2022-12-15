**free

ctl-opt dftactgrp(*no);

dcl-pi P270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds T87 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T87 FROM T87 LIMIT 1;

theCharVar = 'Hello from P270';
dsply theCharVar;
callp localProc();
P135();
P13();
P236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P270 in the procedure';
end-proc;