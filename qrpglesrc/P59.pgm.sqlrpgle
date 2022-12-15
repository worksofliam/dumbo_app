**free

ctl-opt dftactgrp(*no);

dcl-pi P59;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P59';
dsply theCharVar;
callp localProc();
P14();
P6();
P36();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P59 in the procedure';
end-proc;