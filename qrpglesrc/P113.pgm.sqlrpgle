**free

ctl-opt dftactgrp(*no);

dcl-pi P113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds T289 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T289 FROM T289 LIMIT 1;

theCharVar = 'Hello from P113';
dsply theCharVar;
callp localProc();
P77();
P107();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P113 in the procedure';
end-proc;