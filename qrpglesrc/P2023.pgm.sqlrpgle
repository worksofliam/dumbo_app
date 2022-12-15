**free

ctl-opt dftactgrp(*no);

dcl-pi P2023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1989.rpgleinc'
/copy 'qrpgleref/P1678.rpgleinc'
/copy 'qrpgleref/P952.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P2023';
dsply theCharVar;
callp localProc();
P1989();
P1678();
P952();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2023 in the procedure';
end-proc;