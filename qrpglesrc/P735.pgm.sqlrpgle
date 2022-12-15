**free

ctl-opt dftactgrp(*no);

dcl-pi P735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'

dcl-ds theTable extname('T81') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T81 LIMIT 1;

theCharVar = 'Hello from P735';
dsply theCharVar;
callp localProc();
P631();
P278();
P441();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P735 in the procedure';
end-proc;