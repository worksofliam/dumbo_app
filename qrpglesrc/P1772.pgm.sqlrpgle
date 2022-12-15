**free

ctl-opt dftactgrp(*no);

dcl-pi P1772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1083.rpgleinc'
/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T481 LIMIT 1;

theCharVar = 'Hello from P1772';
dsply theCharVar;
callp localProc();
P1083();
P1459();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1772 in the procedure';
end-proc;