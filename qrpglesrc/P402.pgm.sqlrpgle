**free

ctl-opt dftactgrp(*no);

dcl-pi P402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds T629 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T629 FROM T629 LIMIT 1;

theCharVar = 'Hello from P402';
dsply theCharVar;
callp localProc();
P222();
P79();
P178();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P402 in the procedure';
end-proc;