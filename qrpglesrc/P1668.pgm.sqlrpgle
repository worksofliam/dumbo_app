**free

ctl-opt dftactgrp(*no);

dcl-pi P1668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P1516.rpgleinc'

dcl-ds theTable extname('T1008') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1008 LIMIT 1;

theCharVar = 'Hello from P1668';
dsply theCharVar;
callp localProc();
P52();
P122();
P1516();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1668 in the procedure';
end-proc;