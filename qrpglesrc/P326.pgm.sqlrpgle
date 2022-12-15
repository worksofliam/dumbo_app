**free

ctl-opt dftactgrp(*no);

dcl-pi P326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds theTable extname('T1231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1231 LIMIT 1;

theCharVar = 'Hello from P326';
dsply theCharVar;
callp localProc();
P84();
P111();
P238();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P326 in the procedure';
end-proc;