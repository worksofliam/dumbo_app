**free

ctl-opt dftactgrp(*no);

dcl-pi P5100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2599.rpgleinc'
/copy 'qrpgleref/P3038.rpgleinc'
/copy 'qrpgleref/P4440.rpgleinc'

dcl-ds T691 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T691 FROM T691 LIMIT 1;

theCharVar = 'Hello from P5100';
dsply theCharVar;
callp localProc();
P2599();
P3038();
P4440();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5100 in the procedure';
end-proc;