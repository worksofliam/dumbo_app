**free

ctl-opt dftactgrp(*no);

dcl-pi P522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P522';
dsply theCharVar;
callp localProc();
P236();
P87();
P367();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P522 in the procedure';
end-proc;