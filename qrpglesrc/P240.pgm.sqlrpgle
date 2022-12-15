**free

ctl-opt dftactgrp(*no);

dcl-pi P240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P240';
dsply theCharVar;
callp localProc();
P89();
P195();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P240 in the procedure';
end-proc;