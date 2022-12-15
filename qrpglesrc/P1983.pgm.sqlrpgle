**free

ctl-opt dftactgrp(*no);

dcl-pi P1983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1475.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P1316.rpgleinc'

dcl-ds theTable extname('T1428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1428 LIMIT 1;

theCharVar = 'Hello from P1983';
dsply theCharVar;
callp localProc();
P1475();
P1115();
P1316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1983 in the procedure';
end-proc;