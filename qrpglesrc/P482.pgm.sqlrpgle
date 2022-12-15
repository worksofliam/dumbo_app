**free

ctl-opt dftactgrp(*no);

dcl-pi P482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P482';
dsply theCharVar;
callp localProc();
P242();
P427();
P226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P482 in the procedure';
end-proc;