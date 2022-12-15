**free

ctl-opt dftactgrp(*no);

dcl-pi P331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'

dcl-ds T329 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T329 FROM T329 LIMIT 1;

theCharVar = 'Hello from P331';
dsply theCharVar;
P8();
P259();
P283();
return;