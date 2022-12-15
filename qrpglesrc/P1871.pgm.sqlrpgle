**free

ctl-opt dftactgrp(*no);

dcl-pi P1871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P1759.rpgleinc'
/copy 'qrpgleref/P1626.rpgleinc'

dcl-ds theTable extname('T100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T100 LIMIT 1;

theCharVar = 'Hello from P1871';
dsply theCharVar;
callp localProc();
P223();
P1759();
P1626();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1871 in the procedure';
end-proc;