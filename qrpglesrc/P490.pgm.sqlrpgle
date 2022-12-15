**free

ctl-opt dftactgrp(*no);

dcl-pi P490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P490';
dsply theCharVar;
callp localProc();
P61();
P318();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P490 in the procedure';
end-proc;