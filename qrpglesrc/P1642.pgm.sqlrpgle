**free

ctl-opt dftactgrp(*no);

dcl-pi P1642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1638.rpgleinc'
/copy 'qrpgleref/P1514.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds theTable extname('T962') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T962 LIMIT 1;

theCharVar = 'Hello from P1642';
dsply theCharVar;
callp localProc();
P1638();
P1514();
P216();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1642 in the procedure';
end-proc;