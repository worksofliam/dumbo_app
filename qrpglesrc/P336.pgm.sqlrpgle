**free

ctl-opt dftactgrp(*no);

dcl-pi P336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T525') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T525 LIMIT 1;

theCharVar = 'Hello from P336';
dsply theCharVar;
callp localProc();
P73();
P187();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P336 in the procedure';
end-proc;