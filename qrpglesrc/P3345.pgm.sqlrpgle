**free

ctl-opt dftactgrp(*no);

dcl-pi P3345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2209.rpgleinc'
/copy 'qrpgleref/P1029.rpgleinc'
/copy 'qrpgleref/P2685.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P3345';
dsply theCharVar;
callp localProc();
P2209();
P1029();
P2685();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3345 in the procedure';
end-proc;