**free

ctl-opt dftactgrp(*no);

dcl-pi P2781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'

dcl-ds theTable extname('T1116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1116 LIMIT 1;

theCharVar = 'Hello from P2781';
dsply theCharVar;
callp localProc();
P65();
P496();
P460();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2781 in the procedure';
end-proc;