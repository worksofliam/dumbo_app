**free

ctl-opt dftactgrp(*no);

dcl-pi P138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P138';
dsply theCharVar;
callp localProc();
P123();
P11();
P105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P138 in the procedure';
end-proc;