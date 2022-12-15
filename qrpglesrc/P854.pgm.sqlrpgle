**free

ctl-opt dftactgrp(*no);

dcl-pi P854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P735.rpgleinc'

dcl-ds theTable extname('T27') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T27 LIMIT 1;

theCharVar = 'Hello from P854';
dsply theCharVar;
callp localProc();
P115();
P340();
P735();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P854 in the procedure';
end-proc;