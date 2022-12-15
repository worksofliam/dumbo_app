**free

ctl-opt dftactgrp(*no);

dcl-pi P567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P567';
dsply theCharVar;
callp localProc();
P90();
P496();
P256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P567 in the procedure';
end-proc;