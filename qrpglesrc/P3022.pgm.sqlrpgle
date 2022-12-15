**free

ctl-opt dftactgrp(*no);

dcl-pi P3022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P2700.rpgleinc'
/copy 'qrpgleref/P2719.rpgleinc'

dcl-ds theTable extname('T1220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1220 LIMIT 1;

theCharVar = 'Hello from P3022';
dsply theCharVar;
callp localProc();
P994();
P2700();
P2719();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3022 in the procedure';
end-proc;