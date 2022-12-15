**free

ctl-opt dftactgrp(*no);

dcl-pi P4621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1828.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P1849.rpgleinc'

dcl-ds theTable extname('T342') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T342 LIMIT 1;

theCharVar = 'Hello from P4621';
dsply theCharVar;
callp localProc();
P1828();
P719();
P1849();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4621 in the procedure';
end-proc;