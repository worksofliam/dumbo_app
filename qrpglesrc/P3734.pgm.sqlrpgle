**free

ctl-opt dftactgrp(*no);

dcl-pi P3734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P1703.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'

dcl-ds theTable extname('T277') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T277 LIMIT 1;

theCharVar = 'Hello from P3734';
dsply theCharVar;
callp localProc();
P1184();
P1703();
P810();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3734 in the procedure';
end-proc;