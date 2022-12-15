**free

ctl-opt dftactgrp(*no);

dcl-pi P885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds theTable extname('T1024') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1024 LIMIT 1;

theCharVar = 'Hello from P885';
dsply theCharVar;
callp localProc();
P52();
P356();
P596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P885 in the procedure';
end-proc;