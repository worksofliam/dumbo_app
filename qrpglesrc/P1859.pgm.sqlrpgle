**free

ctl-opt dftactgrp(*no);

dcl-pi P1859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P927.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P1859';
dsply theCharVar;
callp localProc();
P927();
P361();
P34();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1859 in the procedure';
end-proc;