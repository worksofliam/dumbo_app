**free

ctl-opt dftactgrp(*no);

dcl-pi P3087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P2851.rpgleinc'

dcl-ds theTable extname('T13') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T13 LIMIT 1;

theCharVar = 'Hello from P3087';
dsply theCharVar;
callp localProc();
P154();
P1070();
P2851();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3087 in the procedure';
end-proc;