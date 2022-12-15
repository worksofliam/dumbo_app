**free

ctl-opt dftactgrp(*no);

dcl-pi P206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T178 LIMIT 1;

theCharVar = 'Hello from P206';
dsply theCharVar;
callp localProc();
P94();
P203();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P206 in the procedure';
end-proc;