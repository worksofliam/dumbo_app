**free

ctl-opt dftactgrp(*no);

dcl-pi P151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds theTable extname('T217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T217 LIMIT 1;

theCharVar = 'Hello from P151';
dsply theCharVar;
callp localProc();
P142();
P29();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P151 in the procedure';
end-proc;