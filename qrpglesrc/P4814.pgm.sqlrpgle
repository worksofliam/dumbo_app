**free

ctl-opt dftactgrp(*no);

dcl-pi P4814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P4669.rpgleinc'
/copy 'qrpgleref/P1729.rpgleinc'

dcl-ds theTable extname('T499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T499 LIMIT 1;

theCharVar = 'Hello from P4814';
dsply theCharVar;
callp localProc();
P548();
P4669();
P1729();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4814 in the procedure';
end-proc;