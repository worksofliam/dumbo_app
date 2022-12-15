**free

ctl-opt dftactgrp(*no);

dcl-pi P605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T375 LIMIT 1;

theCharVar = 'Hello from P605';
dsply theCharVar;
callp localProc();
P185();
P331();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P605 in the procedure';
end-proc;