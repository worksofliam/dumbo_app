**free

ctl-opt dftactgrp(*no);

dcl-pi P3196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P3196';
dsply theCharVar;
callp localProc();
P1901();
P1333();
P608();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3196 in the procedure';
end-proc;