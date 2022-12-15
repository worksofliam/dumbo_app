**free

ctl-opt dftactgrp(*no);

dcl-pi P820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'

dcl-ds theTable extname('T984') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T984 LIMIT 1;

theCharVar = 'Hello from P820';
dsply theCharVar;
callp localProc();
P80();
P176();
P523();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P820 in the procedure';
end-proc;