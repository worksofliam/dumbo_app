**free

ctl-opt dftactgrp(*no);

dcl-pi P687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds theTable extname('T93') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T93 LIMIT 1;

theCharVar = 'Hello from P687';
dsply theCharVar;
callp localProc();
P642();
P243();
P60();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P687 in the procedure';
end-proc;