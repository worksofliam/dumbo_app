**free

ctl-opt dftactgrp(*no);

dcl-pi P1079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'

dcl-ds T222 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T222 FROM T222 LIMIT 1;

theCharVar = 'Hello from P1079';
dsply theCharVar;
callp localProc();
P135();
P855();
P544();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1079 in the procedure';
end-proc;