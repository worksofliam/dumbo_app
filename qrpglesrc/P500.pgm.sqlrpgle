**free

ctl-opt dftactgrp(*no);

dcl-pi P500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds theTable extname('T219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T219 LIMIT 1;

theCharVar = 'Hello from P500';
dsply theCharVar;
callp localProc();
P379();
P60();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P500 in the procedure';
end-proc;