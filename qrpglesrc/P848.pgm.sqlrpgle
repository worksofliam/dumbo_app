**free

ctl-opt dftactgrp(*no);

dcl-pi P848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds T403 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T403 FROM T403 LIMIT 1;

theCharVar = 'Hello from P848';
dsply theCharVar;
callp localProc();
P507();
P797();
P238();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P848 in the procedure';
end-proc;