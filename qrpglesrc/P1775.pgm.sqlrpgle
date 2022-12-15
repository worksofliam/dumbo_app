**free

ctl-opt dftactgrp(*no);

dcl-pi P1775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P1258.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'

dcl-ds theTable extname('T1738') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1738 LIMIT 1;

theCharVar = 'Hello from P1775';
dsply theCharVar;
callp localProc();
P714();
P1258();
P534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1775 in the procedure';
end-proc;