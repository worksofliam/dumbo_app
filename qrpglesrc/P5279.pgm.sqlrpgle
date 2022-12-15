**free

ctl-opt dftactgrp(*no);

dcl-pi P5279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P2021.rpgleinc'
/copy 'qrpgleref/P2798.rpgleinc'

dcl-ds theTable extname('T1773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1773 LIMIT 1;

theCharVar = 'Hello from P5279';
dsply theCharVar;
callp localProc();
P893();
P2021();
P2798();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5279 in the procedure';
end-proc;