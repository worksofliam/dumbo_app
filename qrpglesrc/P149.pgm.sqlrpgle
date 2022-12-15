**free

ctl-opt dftactgrp(*no);

dcl-pi P149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P149';
dsply theCharVar;
callp localProc();
P101();
P123();
P60();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P149 in the procedure';
end-proc;