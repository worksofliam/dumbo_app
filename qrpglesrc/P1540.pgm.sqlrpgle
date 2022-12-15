**free

ctl-opt dftactgrp(*no);

dcl-pi P1540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P927.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds theTable extname('T1757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1757 LIMIT 1;

theCharVar = 'Hello from P1540';
dsply theCharVar;
callp localProc();
P927();
P984();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1540 in the procedure';
end-proc;