**free

ctl-opt dftactgrp(*no);

dcl-pi P1849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P885.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P1849';
dsply theCharVar;
callp localProc();
P885();
P629();
P668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1849 in the procedure';
end-proc;