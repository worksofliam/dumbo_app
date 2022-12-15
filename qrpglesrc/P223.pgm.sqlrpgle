**free

ctl-opt dftactgrp(*no);

dcl-pi P223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds theTable extname('T570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T570 LIMIT 1;

theCharVar = 'Hello from P223';
dsply theCharVar;
callp localProc();
P152();
P6();
P119();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P223 in the procedure';
end-proc;