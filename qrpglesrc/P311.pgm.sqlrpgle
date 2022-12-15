**free

ctl-opt dftactgrp(*no);

dcl-pi P311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds T46 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T46 FROM T46 LIMIT 1;

theCharVar = 'Hello from P311';
dsply theCharVar;
callp localProc();
P3();
P137();
P281();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P311 in the procedure';
end-proc;