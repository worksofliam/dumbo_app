**free

ctl-opt dftactgrp(*no);

dcl-pi P3767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P3056.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'

dcl-ds theTable extname('T1550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1550 LIMIT 1;

theCharVar = 'Hello from P3767';
dsply theCharVar;
callp localProc();
P1231();
P3056();
P2199();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3767 in the procedure';
end-proc;