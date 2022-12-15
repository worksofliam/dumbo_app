**free

ctl-opt dftactgrp(*no);

dcl-pi P3727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1787.rpgleinc'
/copy 'qrpgleref/P3223.rpgleinc'
/copy 'qrpgleref/P1547.rpgleinc'

dcl-ds theTable extname('T826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T826 LIMIT 1;

theCharVar = 'Hello from P3727';
dsply theCharVar;
callp localProc();
P1787();
P3223();
P1547();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3727 in the procedure';
end-proc;