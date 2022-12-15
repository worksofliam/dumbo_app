**free

ctl-opt dftactgrp(*no);

dcl-pi P4423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P4188.rpgleinc'
/copy 'qrpgleref/P4160.rpgleinc'

dcl-ds T835 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T835 FROM T835 LIMIT 1;

theCharVar = 'Hello from P4423';
dsply theCharVar;
callp localProc();
P915();
P4188();
P4160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4423 in the procedure';
end-proc;