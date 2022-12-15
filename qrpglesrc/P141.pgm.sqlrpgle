**free

ctl-opt dftactgrp(*no);

dcl-pi P141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T34') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T34 LIMIT 1;

theCharVar = 'Hello from P141';
dsply theCharVar;
callp localProc();
P137();
P34();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P141 in the procedure';
end-proc;