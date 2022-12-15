**free

ctl-opt dftactgrp(*no);

dcl-pi P2628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1671.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'

dcl-ds theTable extname('T1169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1169 LIMIT 1;

theCharVar = 'Hello from P2628';
dsply theCharVar;
callp localProc();
P1671();
P565();
P1212();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2628 in the procedure';
end-proc;