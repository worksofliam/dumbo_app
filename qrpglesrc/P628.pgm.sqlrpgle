**free

ctl-opt dftactgrp(*no);

dcl-pi P628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P628';
dsply theCharVar;
callp localProc();
P470();
P156();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P628 in the procedure';
end-proc;