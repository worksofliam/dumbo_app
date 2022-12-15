**free

ctl-opt dftactgrp(*no);

dcl-pi P3173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2246.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P738.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P3173';
dsply theCharVar;
callp localProc();
P2246();
P106();
P738();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3173 in the procedure';
end-proc;