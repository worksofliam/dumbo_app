**free

ctl-opt dftactgrp(*no);

dcl-pi P403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds T88 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T88 FROM T88 LIMIT 1;

theCharVar = 'Hello from P403';
dsply theCharVar;
callp localProc();
P118();
P16();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P403 in the procedure';
end-proc;