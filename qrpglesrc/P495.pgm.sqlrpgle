**free

ctl-opt dftactgrp(*no);

dcl-pi P495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T18') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T18 LIMIT 1;

theCharVar = 'Hello from P495';
dsply theCharVar;
callp localProc();
P25();
P44();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P495 in the procedure';
end-proc;