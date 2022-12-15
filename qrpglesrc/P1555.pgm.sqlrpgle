**free

ctl-opt dftactgrp(*no);

dcl-pi P1555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1526.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'

dcl-ds theTable extname('T508') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T508 LIMIT 1;

theCharVar = 'Hello from P1555';
dsply theCharVar;
callp localProc();
P1526();
P720();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1555 in the procedure';
end-proc;