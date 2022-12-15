**free

ctl-opt dftactgrp(*no);

dcl-pi P1156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P1156';
dsply theCharVar;
callp localProc();
P253();
P842();
P269();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1156 in the procedure';
end-proc;