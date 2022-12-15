**free

ctl-opt dftactgrp(*no);

dcl-pi P1434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1292.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds T293 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T293 FROM T293 LIMIT 1;

theCharVar = 'Hello from P1434';
dsply theCharVar;
callp localProc();
P1292();
P274();
P265();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1434 in the procedure';
end-proc;