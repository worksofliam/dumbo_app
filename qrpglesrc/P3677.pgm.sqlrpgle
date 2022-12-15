**free

ctl-opt dftactgrp(*no);

dcl-pi P3677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P2162.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'

dcl-ds theTable extname('T1518') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1518 LIMIT 1;

theCharVar = 'Hello from P3677';
dsply theCharVar;
callp localProc();
P295();
P2162();
P527();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3677 in the procedure';
end-proc;