**free

ctl-opt dftactgrp(*no);

dcl-pi P5042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4427.rpgleinc'
/copy 'qrpgleref/P2274.rpgleinc'
/copy 'qrpgleref/P3995.rpgleinc'

dcl-ds theTable extname('T1035') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1035 LIMIT 1;

theCharVar = 'Hello from P5042';
dsply theCharVar;
callp localProc();
P4427();
P2274();
P3995();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5042 in the procedure';
end-proc;