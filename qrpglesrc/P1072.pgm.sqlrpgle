**free

ctl-opt dftactgrp(*no);

dcl-pi P1072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'

dcl-ds T435 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T435 FROM T435 LIMIT 1;

theCharVar = 'Hello from P1072';
dsply theCharVar;
callp localProc();
P1027();
P487();
P816();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1072 in the procedure';
end-proc;