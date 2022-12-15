**free

ctl-opt dftactgrp(*no);

dcl-pi P1191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1143.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'

dcl-ds theTable extname('T274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T274 LIMIT 1;

theCharVar = 'Hello from P1191';
dsply theCharVar;
callp localProc();
P1143();
P266();
P404();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1191 in the procedure';
end-proc;