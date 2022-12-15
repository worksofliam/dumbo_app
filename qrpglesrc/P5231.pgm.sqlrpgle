**free

ctl-opt dftactgrp(*no);

dcl-pi P5231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4077.rpgleinc'
/copy 'qrpgleref/P2131.rpgleinc'
/copy 'qrpgleref/P4137.rpgleinc'

dcl-ds theTable extname('T1021') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1021 LIMIT 1;

theCharVar = 'Hello from P5231';
dsply theCharVar;
callp localProc();
P4077();
P2131();
P4137();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5231 in the procedure';
end-proc;