**free

ctl-opt dftactgrp(*no);

dcl-pi P1306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P1180.rpgleinc'

dcl-ds theTable extname('T758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T758 LIMIT 1;

theCharVar = 'Hello from P1306';
dsply theCharVar;
callp localProc();
P104();
P529();
P1180();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1306 in the procedure';
end-proc;