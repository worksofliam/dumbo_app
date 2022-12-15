**free

ctl-opt dftactgrp(*no);

dcl-pi P3143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P2272.rpgleinc'
/copy 'qrpgleref/P1716.rpgleinc'

dcl-ds theTable extname('T823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T823 LIMIT 1;

theCharVar = 'Hello from P3143';
dsply theCharVar;
callp localProc();
P277();
P2272();
P1716();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3143 in the procedure';
end-proc;