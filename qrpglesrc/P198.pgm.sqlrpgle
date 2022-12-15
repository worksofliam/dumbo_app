**free

ctl-opt dftactgrp(*no);

dcl-pi P198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P198';
dsply theCharVar;
callp localProc();
P193();
P52();
P152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P198 in the procedure';
end-proc;