**free

ctl-opt dftactgrp(*no);

dcl-pi P1744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P581.rpgleinc'
/copy 'qrpgleref/P1580.rpgleinc'
/copy 'qrpgleref/P776.rpgleinc'

dcl-ds theTable extname('T864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T864 LIMIT 1;

theCharVar = 'Hello from P1744';
dsply theCharVar;
callp localProc();
P581();
P1580();
P776();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1744 in the procedure';
end-proc;