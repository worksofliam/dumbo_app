**free

ctl-opt dftactgrp(*no);

dcl-pi P665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P665';
dsply theCharVar;
callp localProc();
P29();
P314();
P104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P665 in the procedure';
end-proc;