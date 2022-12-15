**free

ctl-opt dftactgrp(*no);

dcl-pi P5518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3002.rpgleinc'
/copy 'qrpgleref/P5109.rpgleinc'
/copy 'qrpgleref/P4332.rpgleinc'

dcl-ds theTable extname('T866') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T866 LIMIT 1;

theCharVar = 'Hello from P5518';
dsply theCharVar;
callp localProc();
P3002();
P5109();
P4332();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5518 in the procedure';
end-proc;