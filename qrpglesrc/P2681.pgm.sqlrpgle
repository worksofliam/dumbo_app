**free

ctl-opt dftactgrp(*no);

dcl-pi P2681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P2366.rpgleinc'

dcl-ds theTable extname('T731') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T731 LIMIT 1;

theCharVar = 'Hello from P2681';
dsply theCharVar;
callp localProc();
P1048();
P1798();
P2366();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2681 in the procedure';
end-proc;