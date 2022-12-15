**free

ctl-opt dftactgrp(*no);

dcl-pi P1555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P1496.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P1555';
dsply theCharVar;
callp localProc();
P1231();
P143();
P1496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1555 in the procedure';
end-proc;