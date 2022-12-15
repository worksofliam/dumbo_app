**free

ctl-opt dftactgrp(*no);

dcl-pi P94;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T320 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T320 FROM T320 LIMIT 1;

theCharVar = 'Hello from P94';
dsply theCharVar;
callp localProc();
P38();
P69();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P94 in the procedure';
end-proc;