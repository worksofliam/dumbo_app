**free

ctl-opt dftactgrp(*no);

dcl-pi P1561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'

dcl-ds theTable extname('T73') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T73 LIMIT 1;

theCharVar = 'Hello from P1561';
dsply theCharVar;
callp localProc();
P105();
P1293();
P775();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1561 in the procedure';
end-proc;