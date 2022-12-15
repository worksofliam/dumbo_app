**free

ctl-opt dftactgrp(*no);

dcl-pi P492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P492';
dsply theCharVar;
callp localProc();
P233();
P247();
P165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P492 in the procedure';
end-proc;