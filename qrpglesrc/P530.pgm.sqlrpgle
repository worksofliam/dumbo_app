**free

ctl-opt dftactgrp(*no);

dcl-pi P530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'

dcl-ds T58 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T58 FROM T58 LIMIT 1;

theCharVar = 'Hello from P530';
dsply theCharVar;
callp localProc();
P301();
P376();
P470();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P530 in the procedure';
end-proc;