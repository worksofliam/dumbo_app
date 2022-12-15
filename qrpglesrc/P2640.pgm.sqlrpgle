**free

ctl-opt dftactgrp(*no);

dcl-pi P2640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1616.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'

dcl-ds theTable extname('T664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T664 LIMIT 1;

theCharVar = 'Hello from P2640';
dsply theCharVar;
callp localProc();
P1616();
P987();
P883();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2640 in the procedure';
end-proc;