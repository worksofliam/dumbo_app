**free

ctl-opt dftactgrp(*no);

dcl-pi P3790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P3178.rpgleinc'
/copy 'qrpgleref/P2418.rpgleinc'

dcl-ds theTable extname('T962') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T962 LIMIT 1;

theCharVar = 'Hello from P3790';
dsply theCharVar;
callp localProc();
P596();
P3178();
P2418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3790 in the procedure';
end-proc;