**free

ctl-opt dftactgrp(*no);

dcl-pi P1253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1246.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds theTable extname('T675') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T675 LIMIT 1;

theCharVar = 'Hello from P1253';
dsply theCharVar;
callp localProc();
P1246();
P740();
P716();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1253 in the procedure';
end-proc;