**free

ctl-opt dftactgrp(*no);

dcl-pi P208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T211 LIMIT 1;

theCharVar = 'Hello from P208';
dsply theCharVar;
callp localProc();
P110();
P19();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P208 in the procedure';
end-proc;