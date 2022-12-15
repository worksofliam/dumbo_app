**free

ctl-opt dftactgrp(*no);

dcl-pi P203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'

dcl-ds theTable extname('T73') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T73 LIMIT 1;

theCharVar = 'Hello from P203';
dsply theCharVar;
callp localProc();
P102();
P61();
P134();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P203 in the procedure';
end-proc;