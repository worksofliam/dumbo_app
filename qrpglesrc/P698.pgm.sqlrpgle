**free

ctl-opt dftactgrp(*no);

dcl-pi P698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds theTable extname('T16') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T16 LIMIT 1;

theCharVar = 'Hello from P698';
dsply theCharVar;
callp localProc();
P459();
P181();
P101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P698 in the procedure';
end-proc;