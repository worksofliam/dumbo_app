**free

ctl-opt dftactgrp(*no);

dcl-pi P93;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T452 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T452 FROM T452 LIMIT 1;

theCharVar = 'Hello from P93';
dsply theCharVar;
callp localProc();
P71();
P72();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P93 in the procedure';
end-proc;