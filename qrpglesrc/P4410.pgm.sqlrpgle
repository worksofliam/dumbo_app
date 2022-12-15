**free

ctl-opt dftactgrp(*no);

dcl-pi P4410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P920.rpgleinc'
/copy 'qrpgleref/P1381.rpgleinc'

dcl-ds T222 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T222 FROM T222 LIMIT 1;

theCharVar = 'Hello from P4410';
dsply theCharVar;
callp localProc();
P280();
P920();
P1381();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4410 in the procedure';
end-proc;