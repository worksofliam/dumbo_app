**free

ctl-opt dftactgrp(*no);

dcl-pi P701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'

dcl-ds theTable extname('T88') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T88 LIMIT 1;

theCharVar = 'Hello from P701';
dsply theCharVar;
callp localProc();
P562();
P308();
P456();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P701 in the procedure';
end-proc;