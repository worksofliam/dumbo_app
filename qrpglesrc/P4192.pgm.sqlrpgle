**free

ctl-opt dftactgrp(*no);

dcl-pi P4192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2783.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P992.rpgleinc'

dcl-ds theTable extname('T310') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T310 LIMIT 1;

theCharVar = 'Hello from P4192';
dsply theCharVar;
callp localProc();
P2783();
P472();
P992();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4192 in the procedure';
end-proc;