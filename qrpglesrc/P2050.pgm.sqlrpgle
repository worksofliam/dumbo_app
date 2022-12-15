**free

ctl-opt dftactgrp(*no);

dcl-pi P2050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1734.rpgleinc'
/copy 'qrpgleref/P746.rpgleinc'
/copy 'qrpgleref/P960.rpgleinc'

dcl-ds theTable extname('T1363') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1363 LIMIT 1;

theCharVar = 'Hello from P2050';
dsply theCharVar;
callp localProc();
P1734();
P746();
P960();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2050 in the procedure';
end-proc;