**free

ctl-opt dftactgrp(*no);

dcl-pi P1746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P801.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P1746';
dsply theCharVar;
callp localProc();
P801();
P436();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1746 in the procedure';
end-proc;