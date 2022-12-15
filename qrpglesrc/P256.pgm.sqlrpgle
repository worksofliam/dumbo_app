**free

ctl-opt dftactgrp(*no);

dcl-pi P256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P256';
dsply theCharVar;
callp localProc();
P229();
P223();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P256 in the procedure';
end-proc;