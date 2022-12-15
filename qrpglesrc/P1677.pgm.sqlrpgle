**free

ctl-opt dftactgrp(*no);

dcl-pi P1677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P1634.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P1677';
dsply theCharVar;
callp localProc();
P849();
P96();
P1634();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1677 in the procedure';
end-proc;