**free

ctl-opt dftactgrp(*no);

dcl-pi P2272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P1712.rpgleinc'

dcl-ds theTable extname('T1238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1238 LIMIT 1;

theCharVar = 'Hello from P2272';
dsply theCharVar;
callp localProc();
P392();
P665();
P1712();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2272 in the procedure';
end-proc;