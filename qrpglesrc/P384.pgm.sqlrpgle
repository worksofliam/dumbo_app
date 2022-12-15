**free

ctl-opt dftactgrp(*no);

dcl-pi P384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds T708 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T708 FROM T708 LIMIT 1;

theCharVar = 'Hello from P384';
dsply theCharVar;
callp localProc();
P343();
P159();
P176();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P384 in the procedure';
end-proc;