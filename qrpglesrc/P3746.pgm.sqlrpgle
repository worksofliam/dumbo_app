**free

ctl-opt dftactgrp(*no);

dcl-pi P3746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'

dcl-ds theTable extname('T674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T674 LIMIT 1;

theCharVar = 'Hello from P3746';
dsply theCharVar;
callp localProc();
P929();
P1237();
P472();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3746 in the procedure';
end-proc;