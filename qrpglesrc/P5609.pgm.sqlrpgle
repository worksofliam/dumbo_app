**free

ctl-opt dftactgrp(*no);

dcl-pi P5609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1069.rpgleinc'
/copy 'qrpgleref/P4551.rpgleinc'
/copy 'qrpgleref/P1766.rpgleinc'

dcl-ds theTable extname('T1103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1103 LIMIT 1;

theCharVar = 'Hello from P5609';
dsply theCharVar;
callp localProc();
P1069();
P4551();
P1766();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5609 in the procedure';
end-proc;