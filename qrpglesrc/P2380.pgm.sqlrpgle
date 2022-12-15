**free

ctl-opt dftactgrp(*no);

dcl-pi P2380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1170.rpgleinc'
/copy 'qrpgleref/P2365.rpgleinc'
/copy 'qrpgleref/P1659.rpgleinc'

dcl-ds theTable extname('T1431') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1431 LIMIT 1;

theCharVar = 'Hello from P2380';
dsply theCharVar;
callp localProc();
P1170();
P2365();
P1659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2380 in the procedure';
end-proc;