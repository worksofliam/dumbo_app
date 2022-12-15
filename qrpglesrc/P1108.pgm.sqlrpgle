**free

ctl-opt dftactgrp(*no);

dcl-pi P1108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P600.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'

dcl-ds T83 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T83 FROM T83 LIMIT 1;

theCharVar = 'Hello from P1108';
dsply theCharVar;
callp localProc();
P600();
P913();
P868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1108 in the procedure';
end-proc;