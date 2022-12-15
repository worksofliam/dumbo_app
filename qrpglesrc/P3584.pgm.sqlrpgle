**free

ctl-opt dftactgrp(*no);

dcl-pi P3584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1850.rpgleinc'
/copy 'qrpgleref/P2861.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'

dcl-ds theTable extname('T672') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T672 LIMIT 1;

theCharVar = 'Hello from P3584';
dsply theCharVar;
callp localProc();
P1850();
P2861();
P1043();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3584 in the procedure';
end-proc;