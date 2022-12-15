**free

ctl-opt dftactgrp(*no);

dcl-pi P2349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'

dcl-ds theTable extname('T1136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1136 LIMIT 1;

theCharVar = 'Hello from P2349';
dsply theCharVar;
callp localProc();
P488();
P1700();
P692();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2349 in the procedure';
end-proc;