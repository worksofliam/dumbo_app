**free

ctl-opt dftactgrp(*no);

dcl-pi P701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P701';
dsply theCharVar;
callp localProc();
P493();
P128();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P701 in the procedure';
end-proc;