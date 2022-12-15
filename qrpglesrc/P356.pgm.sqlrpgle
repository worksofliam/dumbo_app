**free

ctl-opt dftactgrp(*no);

dcl-pi P356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds T492 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T492 FROM T492 LIMIT 1;

theCharVar = 'Hello from P356';
dsply theCharVar;
callp localProc();
P135();
P289();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P356 in the procedure';
end-proc;