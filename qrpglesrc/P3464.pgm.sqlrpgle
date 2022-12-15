**free

ctl-opt dftactgrp(*no);

dcl-pi P3464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2696.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P1276.rpgleinc'

dcl-ds theTable extname('T1135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1135 LIMIT 1;

theCharVar = 'Hello from P3464';
dsply theCharVar;
callp localProc();
P2696();
P721();
P1276();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3464 in the procedure';
end-proc;