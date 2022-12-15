**free

ctl-opt dftactgrp(*no);

dcl-pi P343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds T1667 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1667 FROM T1667 LIMIT 1;

theCharVar = 'Hello from P343';
dsply theCharVar;
callp localProc();
P322();
P127();
P66();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P343 in the procedure';
end-proc;