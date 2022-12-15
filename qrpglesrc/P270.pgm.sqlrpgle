**free

ctl-opt dftactgrp(*no);

dcl-pi P270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds T801 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T801 FROM T801 LIMIT 1;

theCharVar = 'Hello from P270';
dsply theCharVar;
callp localProc();
P40();
P26();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P270 in the procedure';
end-proc;