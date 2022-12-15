**free

ctl-opt dftactgrp(*no);

dcl-pi P297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'

dcl-ds T217 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T217 FROM T217 LIMIT 1;

theCharVar = 'Hello from P297';
dsply theCharVar;
callp localProc();
P189();
P146();
P220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P297 in the procedure';
end-proc;