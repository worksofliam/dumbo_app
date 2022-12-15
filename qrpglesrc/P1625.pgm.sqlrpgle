**free

ctl-opt dftactgrp(*no);

dcl-pi P1625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1369.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P1625';
dsply theCharVar;
callp localProc();
P1369();
P119();
P389();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1625 in the procedure';
end-proc;