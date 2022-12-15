**free

ctl-opt dftactgrp(*no);

dcl-pi P798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds T368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T368 FROM T368 LIMIT 1;

theCharVar = 'Hello from P798';
dsply theCharVar;
callp localProc();
P674();
P402();
P178();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P798 in the procedure';
end-proc;