**free

ctl-opt dftactgrp(*no);

dcl-pi P5358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2314.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P5071.rpgleinc'

dcl-ds theTable extname('T1800') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1800 LIMIT 1;

theCharVar = 'Hello from P5358';
dsply theCharVar;
callp localProc();
P2314();
P785();
P5071();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5358 in the procedure';
end-proc;