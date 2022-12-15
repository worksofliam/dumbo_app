**free

ctl-opt dftactgrp(*no);

dcl-pi P2877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2768.rpgleinc'
/copy 'qrpgleref/P2542.rpgleinc'
/copy 'qrpgleref/P2045.rpgleinc'

dcl-ds theTable extname('T708') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T708 LIMIT 1;

theCharVar = 'Hello from P2877';
dsply theCharVar;
callp localProc();
P2768();
P2542();
P2045();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2877 in the procedure';
end-proc;