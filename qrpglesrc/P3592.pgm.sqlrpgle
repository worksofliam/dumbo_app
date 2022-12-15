**free

ctl-opt dftactgrp(*no);

dcl-pi P3592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2012.rpgleinc'
/copy 'qrpgleref/P2544.rpgleinc'
/copy 'qrpgleref/P3051.rpgleinc'

dcl-ds theTable extname('T793') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T793 LIMIT 1;

theCharVar = 'Hello from P3592';
dsply theCharVar;
callp localProc();
P2012();
P2544();
P3051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3592 in the procedure';
end-proc;