**free

ctl-opt dftactgrp(*no);

dcl-pi P4362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1379.rpgleinc'
/copy 'qrpgleref/P2052.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T710') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T710 LIMIT 1;

theCharVar = 'Hello from P4362';
dsply theCharVar;
callp localProc();
P1379();
P2052();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4362 in the procedure';
end-proc;