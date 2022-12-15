**free

ctl-opt dftactgrp(*no);

dcl-pi P5296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2064.rpgleinc'
/copy 'qrpgleref/P3657.rpgleinc'
/copy 'qrpgleref/P2084.rpgleinc'

dcl-ds theTable extname('T1091') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1091 LIMIT 1;

theCharVar = 'Hello from P5296';
dsply theCharVar;
callp localProc();
P2064();
P3657();
P2084();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5296 in the procedure';
end-proc;