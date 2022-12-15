**free

ctl-opt dftactgrp(*no);

dcl-pi P5355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3668.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P3196.rpgleinc'

dcl-ds theTable extname('T405') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T405 LIMIT 1;

theCharVar = 'Hello from P5355';
dsply theCharVar;
callp localProc();
P3668();
P789();
P3196();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5355 in the procedure';
end-proc;