**free

ctl-opt dftactgrp(*no);

dcl-pi P1409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P1272.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P1409';
dsply theCharVar;
callp localProc();
P955();
P263();
P1272();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1409 in the procedure';
end-proc;