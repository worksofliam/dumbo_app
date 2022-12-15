**free

ctl-opt dftactgrp(*no);

dcl-pi P649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds theTable extname('T481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T481 LIMIT 1;

theCharVar = 'Hello from P649';
dsply theCharVar;
callp localProc();
P357();
P229();
P116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P649 in the procedure';
end-proc;