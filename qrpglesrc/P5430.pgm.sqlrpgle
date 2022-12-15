**free

ctl-opt dftactgrp(*no);

dcl-pi P5430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4288.rpgleinc'
/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P1477.rpgleinc'

dcl-ds theTable extname('T1639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1639 LIMIT 1;

theCharVar = 'Hello from P5430';
dsply theCharVar;
callp localProc();
P4288();
P530();
P1477();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5430 in the procedure';
end-proc;