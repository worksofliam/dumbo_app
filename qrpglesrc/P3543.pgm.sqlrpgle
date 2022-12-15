**free

ctl-opt dftactgrp(*no);

dcl-pi P3543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2748.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P2389.rpgleinc'

dcl-ds theTable extname('T636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T636 LIMIT 1;

theCharVar = 'Hello from P3543';
dsply theCharVar;
callp localProc();
P2748();
P385();
P2389();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3543 in the procedure';
end-proc;