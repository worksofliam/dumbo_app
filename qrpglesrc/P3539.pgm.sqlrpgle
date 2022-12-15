**free

ctl-opt dftactgrp(*no);

dcl-pi P3539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P1508.rpgleinc'
/copy 'qrpgleref/P2496.rpgleinc'

dcl-ds theTable extname('T724') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T724 LIMIT 1;

theCharVar = 'Hello from P3539';
dsply theCharVar;
callp localProc();
P306();
P1508();
P2496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3539 in the procedure';
end-proc;