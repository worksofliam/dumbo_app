**free

ctl-opt dftactgrp(*no);

dcl-pi P574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds T822 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T822 FROM T822 LIMIT 1;

theCharVar = 'Hello from P574';
dsply theCharVar;
callp localProc();
P271();
P411();
P359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P574 in the procedure';
end-proc;