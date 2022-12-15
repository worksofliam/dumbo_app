**free

ctl-opt dftactgrp(*no);

dcl-pi P4343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3169.rpgleinc'
/copy 'qrpgleref/P2591.rpgleinc'
/copy 'qrpgleref/P2589.rpgleinc'

dcl-ds theTable extname('T1129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1129 LIMIT 1;

theCharVar = 'Hello from P4343';
dsply theCharVar;
callp localProc();
P3169();
P2591();
P2589();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4343 in the procedure';
end-proc;