**free

ctl-opt dftactgrp(*no);

dcl-pi P1887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P1673.rpgleinc'

dcl-ds theTable extname('T508') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T508 LIMIT 1;

theCharVar = 'Hello from P1887';
dsply theCharVar;
callp localProc();
P766();
P778();
P1673();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1887 in the procedure';
end-proc;