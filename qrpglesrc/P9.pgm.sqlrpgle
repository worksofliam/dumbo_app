**free

ctl-opt dftactgrp(*no);

dcl-pi P9;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T176 LIMIT 1;

theCharVar = 'Hello from P9';
dsply theCharVar;
callp localProc();
P5();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P9 in the procedure';
end-proc;