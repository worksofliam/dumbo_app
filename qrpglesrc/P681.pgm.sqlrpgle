**free

ctl-opt dftactgrp(*no);

dcl-pi P681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P681';
dsply theCharVar;
callp localProc();
P668();
P212();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P681 in the procedure';
end-proc;