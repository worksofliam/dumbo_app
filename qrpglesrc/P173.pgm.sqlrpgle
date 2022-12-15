**free

ctl-opt dftactgrp(*no);

dcl-pi P173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T154') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T154 LIMIT 1;

theCharVar = 'Hello from P173';
dsply theCharVar;
callp localProc();
P93();
P116();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P173 in the procedure';
end-proc;