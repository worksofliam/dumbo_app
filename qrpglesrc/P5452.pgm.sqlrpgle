**free

ctl-opt dftactgrp(*no);

dcl-pi P5452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5160.rpgleinc'
/copy 'qrpgleref/P2260.rpgleinc'
/copy 'qrpgleref/P3159.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P5452';
dsply theCharVar;
callp localProc();
P5160();
P2260();
P3159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5452 in the procedure';
end-proc;