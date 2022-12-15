**free

ctl-opt dftactgrp(*no);

dcl-pi P3643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3284.rpgleinc'
/copy 'qrpgleref/P3150.rpgleinc'
/copy 'qrpgleref/P2103.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P3643';
dsply theCharVar;
callp localProc();
P3284();
P3150();
P2103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3643 in the procedure';
end-proc;