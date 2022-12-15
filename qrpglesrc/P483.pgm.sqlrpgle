**free

ctl-opt dftactgrp(*no);

dcl-pi P483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds T406 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T406 FROM T406 LIMIT 1;

theCharVar = 'Hello from P483';
dsply theCharVar;
callp localProc();
P166();
P3();
P392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P483 in the procedure';
end-proc;