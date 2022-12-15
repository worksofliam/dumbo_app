**free

ctl-opt dftactgrp(*no);

dcl-pi P5280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3773.rpgleinc'
/copy 'qrpgleref/P2002.rpgleinc'
/copy 'qrpgleref/P3898.rpgleinc'

dcl-ds theTable extname('T1653') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1653 LIMIT 1;

theCharVar = 'Hello from P5280';
dsply theCharVar;
callp localProc();
P3773();
P2002();
P3898();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5280 in the procedure';
end-proc;