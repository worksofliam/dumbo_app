**free

ctl-opt dftactgrp(*no);

dcl-pi P3024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2146.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'

dcl-ds theTable extname('T793') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T793 LIMIT 1;

theCharVar = 'Hello from P3024';
dsply theCharVar;
callp localProc();
P2146();
P1798();
P319();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3024 in the procedure';
end-proc;