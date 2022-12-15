**free

ctl-opt dftactgrp(*no);

dcl-pi P2644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P2010.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P2644';
dsply theCharVar;
callp localProc();
P548();
P284();
P2010();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2644 in the procedure';
end-proc;