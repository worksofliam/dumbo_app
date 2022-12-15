**free

ctl-opt dftactgrp(*no);

dcl-pi P1840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P1795.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds T530 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T530 FROM T530 LIMIT 1;

theCharVar = 'Hello from P1840';
dsply theCharVar;
callp localProc();
P343();
P1795();
P85();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1840 in the procedure';
end-proc;