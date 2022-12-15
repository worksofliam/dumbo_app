**free

ctl-opt dftactgrp(*no);

dcl-pi P1895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T684') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T684 LIMIT 1;

theCharVar = 'Hello from P1895';
dsply theCharVar;
callp localProc();
P719();
P1427();
P59();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1895 in the procedure';
end-proc;