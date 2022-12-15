**free

ctl-opt dftactgrp(*no);

dcl-pi P1213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P709.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds theTable extname('T134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T134 LIMIT 1;

theCharVar = 'Hello from P1213';
dsply theCharVar;
callp localProc();
P709();
P231();
P545();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1213 in the procedure';
end-proc;