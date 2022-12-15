**free

ctl-opt dftactgrp(*no);

dcl-pi P538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds T602 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T602 FROM T602 LIMIT 1;

theCharVar = 'Hello from P538';
dsply theCharVar;
callp localProc();
P33();
P312();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P538 in the procedure';
end-proc;