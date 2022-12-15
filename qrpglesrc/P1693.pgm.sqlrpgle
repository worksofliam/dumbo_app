**free

ctl-opt dftactgrp(*no);

dcl-pi P1693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1065.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds T1423 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1423 FROM T1423 LIMIT 1;

theCharVar = 'Hello from P1693';
dsply theCharVar;
callp localProc();
P1065();
P739();
P343();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1693 in the procedure';
end-proc;