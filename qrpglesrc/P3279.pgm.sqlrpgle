**free

ctl-opt dftactgrp(*no);

dcl-pi P3279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1768.rpgleinc'
/copy 'qrpgleref/P2798.rpgleinc'
/copy 'qrpgleref/P2576.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P3279';
dsply theCharVar;
callp localProc();
P1768();
P2798();
P2576();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3279 in the procedure';
end-proc;