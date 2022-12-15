**free

ctl-opt dftactgrp(*no);

dcl-pi P2262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T530') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T530 LIMIT 1;

theCharVar = 'Hello from P2262';
dsply theCharVar;
callp localProc();
P173();
P463();
P668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2262 in the procedure';
end-proc;