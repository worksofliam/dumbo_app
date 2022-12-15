**free

ctl-opt dftactgrp(*no);

dcl-pi P2047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P900.rpgleinc'
/copy 'qrpgleref/P1593.rpgleinc'
/copy 'qrpgleref/P1994.rpgleinc'

dcl-ds theTable extname('T964') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T964 LIMIT 1;

theCharVar = 'Hello from P2047';
dsply theCharVar;
callp localProc();
P900();
P1593();
P1994();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2047 in the procedure';
end-proc;