**free

ctl-opt dftactgrp(*no);

dcl-pi P5055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P4393.rpgleinc'

dcl-ds T146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T146 FROM T146 LIMIT 1;

theCharVar = 'Hello from P5055';
dsply theCharVar;
callp localProc();
P152();
P431();
P4393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5055 in the procedure';
end-proc;