**free

ctl-opt dftactgrp(*no);

dcl-pi P708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds T185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T185 FROM T185 LIMIT 1;

theCharVar = 'Hello from P708';
dsply theCharVar;
callp localProc();
P336();
P372();
P392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P708 in the procedure';
end-proc;