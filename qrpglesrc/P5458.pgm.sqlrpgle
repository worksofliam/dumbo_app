**free

ctl-opt dftactgrp(*no);

dcl-pi P5458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4473.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds T506 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T506 FROM T506 LIMIT 1;

theCharVar = 'Hello from P5458';
dsply theCharVar;
callp localProc();
P4473();
P2038();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5458 in the procedure';
end-proc;