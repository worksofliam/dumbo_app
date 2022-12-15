**free

ctl-opt dftactgrp(*no);

dcl-pi P684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds T69 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T69 FROM T69 LIMIT 1;

theCharVar = 'Hello from P684';
dsply theCharVar;
callp localProc();
P343();
P13();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P684 in the procedure';
end-proc;