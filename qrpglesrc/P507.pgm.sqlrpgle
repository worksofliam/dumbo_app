**free

ctl-opt dftactgrp(*no);

dcl-pi P507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'

dcl-ds theTable extname('T158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T158 LIMIT 1;

theCharVar = 'Hello from P507';
dsply theCharVar;
callp localProc();
P328();
P387();
P209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P507 in the procedure';
end-proc;