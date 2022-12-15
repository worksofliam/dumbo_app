**free

ctl-opt dftactgrp(*no);

dcl-pi P1618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1018.rpgleinc'
/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'

dcl-ds theTable extname('T1000') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1000 LIMIT 1;

theCharVar = 'Hello from P1618';
dsply theCharVar;
callp localProc();
P1018();
P738();
P538();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1618 in the procedure';
end-proc;