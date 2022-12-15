**free

ctl-opt dftactgrp(*no);

dcl-pi P3628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P2414.rpgleinc'
/copy 'qrpgleref/P3252.rpgleinc'

dcl-ds theTable extname('T504') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T504 LIMIT 1;

theCharVar = 'Hello from P3628';
dsply theCharVar;
callp localProc();
P106();
P2414();
P3252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3628 in the procedure';
end-proc;