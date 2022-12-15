**free

ctl-opt dftactgrp(*no);

dcl-pi P4806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3151.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P2890.rpgleinc'

dcl-ds theTable extname('T347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T347 LIMIT 1;

theCharVar = 'Hello from P4806';
dsply theCharVar;
callp localProc();
P3151();
P905();
P2890();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4806 in the procedure';
end-proc;