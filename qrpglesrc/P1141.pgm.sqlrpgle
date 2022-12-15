**free

ctl-opt dftactgrp(*no);

dcl-pi P1141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P1141';
dsply theCharVar;
callp localProc();
P950();
P939();
P398();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1141 in the procedure';
end-proc;