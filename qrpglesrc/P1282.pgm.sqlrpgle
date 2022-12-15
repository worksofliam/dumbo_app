**free

ctl-opt dftactgrp(*no);

dcl-pi P1282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds T1806 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1806 FROM T1806 LIMIT 1;

theCharVar = 'Hello from P1282';
dsply theCharVar;
callp localProc();
P343();
P797();
P296();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1282 in the procedure';
end-proc;