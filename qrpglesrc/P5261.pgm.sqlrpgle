**free

ctl-opt dftactgrp(*no);

dcl-pi P5261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4243.rpgleinc'
/copy 'qrpgleref/P4127.rpgleinc'
/copy 'qrpgleref/P1959.rpgleinc'

dcl-ds theTable extname('T524') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T524 LIMIT 1;

theCharVar = 'Hello from P5261';
dsply theCharVar;
callp localProc();
P4243();
P4127();
P1959();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5261 in the procedure';
end-proc;