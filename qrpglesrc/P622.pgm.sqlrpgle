**free

ctl-opt dftactgrp(*no);

dcl-pi P622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'

dcl-ds theTable extname('T463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T463 LIMIT 1;

theCharVar = 'Hello from P622';
dsply theCharVar;
callp localProc();
P284();
P121();
P588();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P622 in the procedure';
end-proc;