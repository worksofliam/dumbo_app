**free

ctl-opt dftactgrp(*no);

dcl-pi P4098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1571.rpgleinc'
/copy 'qrpgleref/P2125.rpgleinc'
/copy 'qrpgleref/P3238.rpgleinc'

dcl-ds theTable extname('T415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T415 LIMIT 1;

theCharVar = 'Hello from P4098';
dsply theCharVar;
callp localProc();
P1571();
P2125();
P3238();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4098 in the procedure';
end-proc;