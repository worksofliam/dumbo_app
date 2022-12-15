**free

ctl-opt dftactgrp(*no);

dcl-pi P2003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P919.rpgleinc'

dcl-ds theTable extname('T436') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T436 LIMIT 1;

theCharVar = 'Hello from P2003';
dsply theCharVar;
callp localProc();
P692();
P1468();
P919();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2003 in the procedure';
end-proc;