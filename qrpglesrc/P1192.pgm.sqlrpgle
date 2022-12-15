**free

ctl-opt dftactgrp(*no);

dcl-pi P1192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T1038') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1038 LIMIT 1;

theCharVar = 'Hello from P1192';
dsply theCharVar;
callp localProc();
P638();
P13();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1192 in the procedure';
end-proc;