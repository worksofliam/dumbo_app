**free

ctl-opt dftactgrp(*no);

dcl-pi P349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds T368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T368 FROM T368 LIMIT 1;

theCharVar = 'Hello from P349';
dsply theCharVar;
callp localProc();
P229();
P293();
P97();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P349 in the procedure';
end-proc;