**free

ctl-opt dftactgrp(*no);

dcl-pi P2047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T1810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1810 LIMIT 1;

theCharVar = 'Hello from P2047';
dsply theCharVar;
callp localProc();
P1104();
P802();
P53();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2047 in the procedure';
end-proc;