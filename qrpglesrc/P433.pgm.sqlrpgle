**free

ctl-opt dftactgrp(*no);

dcl-pi P433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T911') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T911 LIMIT 1;

theCharVar = 'Hello from P433';
dsply theCharVar;
callp localProc();
P103();
P169();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P433 in the procedure';
end-proc;