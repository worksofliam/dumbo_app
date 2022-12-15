**free

ctl-opt dftactgrp(*no);

dcl-pi P3447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3262.rpgleinc'
/copy 'qrpgleref/P3087.rpgleinc'
/copy 'qrpgleref/P2466.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P3447';
dsply theCharVar;
callp localProc();
P3262();
P3087();
P2466();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3447 in the procedure';
end-proc;