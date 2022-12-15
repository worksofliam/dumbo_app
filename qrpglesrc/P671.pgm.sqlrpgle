**free

ctl-opt dftactgrp(*no);

dcl-pi P671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds T163 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T163 FROM T163 LIMIT 1;

theCharVar = 'Hello from P671';
dsply theCharVar;
callp localProc();
P447();
P364();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P671 in the procedure';
end-proc;