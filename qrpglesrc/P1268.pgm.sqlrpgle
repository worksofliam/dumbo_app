**free

ctl-opt dftactgrp(*no);

dcl-pi P1268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P679.rpgleinc'
/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P1268';
dsply theCharVar;
callp localProc();
P679();
P1074();
P476();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1268 in the procedure';
end-proc;