**free

ctl-opt dftactgrp(*no);

dcl-pi P957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P590.rpgleinc'

dcl-ds T376 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T376 FROM T376 LIMIT 1;

theCharVar = 'Hello from P957';
dsply theCharVar;
callp localProc();
P180();
P616();
P590();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P957 in the procedure';
end-proc;