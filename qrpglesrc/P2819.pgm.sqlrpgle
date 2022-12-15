**free

ctl-opt dftactgrp(*no);

dcl-pi P2819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P1449.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'

dcl-ds theTable extname('T717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T717 LIMIT 1;

theCharVar = 'Hello from P2819';
dsply theCharVar;
callp localProc();
P530();
P1449();
P709();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2819 in the procedure';
end-proc;