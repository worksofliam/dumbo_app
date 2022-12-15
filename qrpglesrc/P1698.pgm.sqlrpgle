**free

ctl-opt dftactgrp(*no);

dcl-pi P1698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1607.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'

dcl-ds theTable extname('T59') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T59 LIMIT 1;

theCharVar = 'Hello from P1698';
dsply theCharVar;
callp localProc();
P1607();
P1312();
P679();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1698 in the procedure';
end-proc;