**free

ctl-opt dftactgrp(*no);

dcl-pi P951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P758.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds theTable extname('T122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T122 LIMIT 1;

theCharVar = 'Hello from P951';
dsply theCharVar;
callp localProc();
P90();
P758();
P52();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P951 in the procedure';
end-proc;