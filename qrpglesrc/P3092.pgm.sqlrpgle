**free

ctl-opt dftactgrp(*no);

dcl-pi P3092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P2390.rpgleinc'
/copy 'qrpgleref/P1508.rpgleinc'

dcl-ds theTable extname('T261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T261 LIMIT 1;

theCharVar = 'Hello from P3092';
dsply theCharVar;
callp localProc();
P1161();
P2390();
P1508();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3092 in the procedure';
end-proc;