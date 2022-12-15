**free

ctl-opt dftactgrp(*no);

dcl-pi P721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'

dcl-ds T1135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1135 FROM T1135 LIMIT 1;

theCharVar = 'Hello from P721';
dsply theCharVar;
callp localProc();
P632();
P358();
P719();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P721 in the procedure';
end-proc;