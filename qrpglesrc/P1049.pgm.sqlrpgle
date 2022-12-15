**free

ctl-opt dftactgrp(*no);

dcl-pi P1049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds theTable extname('T832') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T832 LIMIT 1;

theCharVar = 'Hello from P1049';
dsply theCharVar;
callp localProc();
P565();
P272();
P216();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1049 in the procedure';
end-proc;