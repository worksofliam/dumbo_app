**free

ctl-opt dftactgrp(*no);

dcl-pi P294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T43 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T43 FROM T43 LIMIT 1;

theCharVar = 'Hello from P294';
dsply theCharVar;
callp localProc();
P66();
P207();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P294 in the procedure';
end-proc;