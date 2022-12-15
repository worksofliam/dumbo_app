**free

ctl-opt dftactgrp(*no);

dcl-pi P471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T558') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T558 LIMIT 1;

theCharVar = 'Hello from P471';
dsply theCharVar;
callp localProc();
P469();
P393();
P82();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P471 in the procedure';
end-proc;