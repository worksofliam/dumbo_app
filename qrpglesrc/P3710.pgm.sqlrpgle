**free

ctl-opt dftactgrp(*no);

dcl-pi P3710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P1995.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'

dcl-ds theTable extname('T748') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T748 LIMIT 1;

theCharVar = 'Hello from P3710';
dsply theCharVar;
callp localProc();
P547();
P1995();
P868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3710 in the procedure';
end-proc;