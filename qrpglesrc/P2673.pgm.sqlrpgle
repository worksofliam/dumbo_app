**free

ctl-opt dftactgrp(*no);

dcl-pi P2673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'

dcl-ds theTable extname('T393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T393 LIMIT 1;

theCharVar = 'Hello from P2673';
dsply theCharVar;
callp localProc();
P3();
P972();
P527();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2673 in the procedure';
end-proc;