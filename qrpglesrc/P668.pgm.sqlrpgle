**free

ctl-opt dftactgrp(*no);

dcl-pi P668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P668';
dsply theCharVar;
callp localProc();
P237();
P112();
P594();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P668 in the procedure';
end-proc;