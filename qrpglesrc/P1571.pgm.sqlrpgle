**free

ctl-opt dftactgrp(*no);

dcl-pi P1571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P806.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'

dcl-ds theTable extname('T1646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1646 LIMIT 1;

theCharVar = 'Hello from P1571';
dsply theCharVar;
callp localProc();
P806();
P49();
P844();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1571 in the procedure';
end-proc;