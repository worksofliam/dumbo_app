**free

ctl-opt dftactgrp(*no);

dcl-pi P1977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1481.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P1761.rpgleinc'

dcl-ds theTable extname('T882') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T882 LIMIT 1;

theCharVar = 'Hello from P1977';
dsply theCharVar;
callp localProc();
P1481();
P306();
P1761();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1977 in the procedure';
end-proc;