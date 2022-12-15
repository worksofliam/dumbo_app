**free

ctl-opt dftactgrp(*no);

dcl-pi P1022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds theTable extname('T617') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T617 LIMIT 1;

theCharVar = 'Hello from P1022';
dsply theCharVar;
callp localProc();
P30();
P778();
P243();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1022 in the procedure';
end-proc;