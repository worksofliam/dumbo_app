**free

ctl-opt dftactgrp(*no);

dcl-pi P1946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P914.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T1221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1221 LIMIT 1;

theCharVar = 'Hello from P1946';
dsply theCharVar;
callp localProc();
P914();
P810();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1946 in the procedure';
end-proc;