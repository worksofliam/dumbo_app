**free

ctl-opt dftactgrp(*no);

dcl-pi P1084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P1084';
dsply theCharVar;
callp localProc();
P238();
P471();
P694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1084 in the procedure';
end-proc;