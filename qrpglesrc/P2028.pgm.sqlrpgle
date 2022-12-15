**free

ctl-opt dftactgrp(*no);

dcl-pi P2028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P1756.rpgleinc'

dcl-ds theTable extname('T1173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1173 LIMIT 1;

theCharVar = 'Hello from P2028';
dsply theCharVar;
callp localProc();
P1472();
P798();
P1756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2028 in the procedure';
end-proc;