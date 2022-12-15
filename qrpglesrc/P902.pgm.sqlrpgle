**free

ctl-opt dftactgrp(*no);

dcl-pi P902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P860.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'

dcl-ds theTable extname('T120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T120 LIMIT 1;

theCharVar = 'Hello from P902';
dsply theCharVar;
callp localProc();
P860();
P181();
P509();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P902 in the procedure';
end-proc;