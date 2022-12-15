**free

ctl-opt dftactgrp(*no);

dcl-pi P755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'

dcl-ds theTable extname('T474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T474 LIMIT 1;

theCharVar = 'Hello from P755';
dsply theCharVar;
P219();
P354();
P424();
return;