**free

ctl-opt dftactgrp(*no);

dcl-pi P51;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T44') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T44 LIMIT 1;

theCharVar = 'Hello from P51';
dsply theCharVar;
callp localProc();
P1();
P21();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P51 in the procedure';
end-proc;