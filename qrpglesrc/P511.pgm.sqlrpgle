**free

ctl-opt dftactgrp(*no);

dcl-pi P511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds theTable extname('T1703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1703 LIMIT 1;

theCharVar = 'Hello from P511';
dsply theCharVar;
callp localProc();
P16();
P456();
P294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P511 in the procedure';
end-proc;