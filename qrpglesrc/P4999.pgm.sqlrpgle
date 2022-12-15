**free

ctl-opt dftactgrp(*no);

dcl-pi P4999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P2929.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'

dcl-ds theTable extname('T1828') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1828 LIMIT 1;

theCharVar = 'Hello from P4999';
dsply theCharVar;
callp localProc();
P548();
P2929();
P661();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4999 in the procedure';
end-proc;