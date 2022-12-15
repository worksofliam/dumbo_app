**free

ctl-opt dftactgrp(*no);

dcl-pi P1345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds theTable extname('T1080') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1080 LIMIT 1;

theCharVar = 'Hello from P1345';
dsply theCharVar;
callp localProc();
P678();
P290();
P366();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1345 in the procedure';
end-proc;